
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
      :type-slots $ {} $ :dispatch-op |app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'CanvasContextHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait CanvasContextHost (:fill-style 'String) (:stroke-style 'String)
            .clear-rect! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/CanvasContextHost 'Number 'Number 'Number 'Number
              :return 'Unit
            .move-to! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/CanvasContextHost 'Number 'Number
              :return 'Unit
            .rect! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/CanvasContextHost 'Number 'Number 'Number 'Number
              :return 'Unit
            .stroke! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/CanvasContextHost
              :return 'Unit
            .fill! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/CanvasContextHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:clear-rect! |clearRect) (:fill! |fill) (:fill-style |fillStyle) (:move-to! |moveTo) (:rect! |rect) (:stroke! |stroke) (:stroke-style |strokeStyle)
            :writable $ #{} :fill-style :stroke-style
          :schema $ :: 'Trait
        'CanvasElementHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait CanvasElementHost (:offset-width 'Number) (:offset-height 'Number) (:width 'Number) (:height 'Number)
            .get-context $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/CanvasElementHost 'String
              :return 'app.comp.container/CanvasContextHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:get-context |getContext) (:height |height) (:offset-height |offsetHeight) (:offset-width |offsetWidth) (:width |width)
            :writable $ #{} :height :width
          :schema $ :: 'Trait
        'comp-codearea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-codearea (states)
            let
                states-map states
                cursor $ .unwrap $ get states-map :cursor
                state $ decode-map-as
                  .unwrap-or (get states-map :data)
                    {} $ :content |
                  :: 'Map 'Tag 'Dynamic
                content $ decode-map-as
                  .unwrap $ get state :content
                  , 'String
              [] (effect-code)
                textarea $ {} (:value content) (:placeholder |Content)
                  :style $ .merge ui/expand ui/textarea $ {} (:font-family ui/font-code)
                  :on-input $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] *dispatch-op
                          :return 'Unit
                      :return 'Unit
                    d! $ :: :states cursor $ assoc state :content
                      event-value $ decode-map-as e $ :: 'Map 'Tag 'Dynamic
                  :on-keydown $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] *dispatch-op
                          :return 'Unit
                      :return 'Unit
                    when
                      submit-shortcut? $ decode-map-as e $ :: 'Map 'Tag 'Dynamic
                      d! $ :: :ops $ match (.parse-cirru-list content)
                        (:ok parsed) parsed
                        (:err message) (raise message)
                    , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ app.schema/read-store $ .unwrap (get reel :store)
                states store.:states
                ops store.:ops
              div
                {} $ :style $ .merge ui/global ui/fullscreen ui/row
                div
                  {} $ :style $ .merge ui/expand ui/column
                  div ({}) (<> |TODO)
                  comp-codearea $ decode-map-as (>> states :code) (:: 'Map 'Tag 'Dynamic)
                comp-draw ops
                when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'comp-draw $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-draw (ops)
            [] (draw-effect ops)
              create-element :canvas $ {} $ :style ui/expand
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'List (:: 'List 'Dynamic)
        'draw-effect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect draw-effect (ops) (action el at?)
            when
              or (= action :mount) (= action :update)
              let
                  element $ unsafe-coerce el CanvasElementHost
                  ctx $ .get-context element |2d
                  w $ element :offset-width
                  h $ element :offset-height
                js-set element :width w
                js-set element :height h
                .clear-rect! ctx 0 0 w h
                js-set ctx :fill-style $ hsl 200 80 80
                js-set ctx :stroke-style |red
                .move-to! ctx 10 10
                .rect! ctx 40 40 80 80
                .stroke! ctx
                .fill! ctx
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] $ :: 'List (:: 'List 'Dynamic)
            :features $ #{} :js-ffi
        'effect-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-code () (action el at?)
            ; when (= action :mount) (codearea el)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ []
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event)
            decode-map-as
              .unwrap $ get event :value
              , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'submit-shortcut? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn submit-shortcut? (event)
            let
                keyboard $ unsafe-coerce
                  .unwrap $ get event :event
                  , js-ffi.browser/KeyboardEventHost
              if
                and (keyboard :meta-key?)
                  = |Enter $ keyboard :key
                do (.prevent-default! keyboard) true
                , false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.core :as ui)
            respo-ui.core :refer $ hsl
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input create-element
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            |@mvc-works/codearea :refer $ codearea
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |workflow
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ decode-map-as (reel-updater app.updater/update-wire-store @*reel op) (:: 'Map 'Tag 'Dynamic)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
        'dispatch-wire! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-wire! (op)
            if (enum? op) (dispatch! op) (raise |Expected-Enum-operation)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if config/dev? $ load-console-formatter!
            println "|Running mode:" $ if config/dev? |dev |release
            match
              storage-get $ .unwrap $ get config/site :storage-key
              (:some raw)
                do
                  dispatch! $ :: :hydrate-storage $ app.schema/read-stored-store raw
                  , &unit
              (:none) &unit
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch-wire!
            add-event-listener! |beforeunload $ fn (_) (persist-storage!)
            repeat! 60 persist-storage!
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            .unwrap $ respo.ffi.browser/query-selector |.app
          :examples $ []
          :schema $ :: 'respo.dom/DomElement
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ .unwrap $ get @*reel :store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ decode-map-as (refresh-reel @*reel schema/store app.updater/update-wire-store) (:: 'Map 'Tag 'Dynamic)
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            set-interval! cb $ * 1000 duration
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :refer $ query-selector add-event-listener! set-interval! storage-get storage-set!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (:: 'List 'Dynamic) 'Dynamic
            :ops $ :: 'List $ :: 'List 'Dynamic
            :hydrate-storage 'app.schema/Store
            :reel/toggle
            :reel/recall 'Number
            :reel/run
            :reel/step
            :reel/merge
            :reel/reset
            :reel/remove 'Number
          :examples $ []
          :schema $ :: 'EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ :: 'Map 'Tag 'Dynamic
            :ops $ :: 'List $ :: 'List 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'read-ops $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-ops (value)
            decode-map-as
              if (cirru-quote? value)
                .unwrap $ .to-list $ decode-map-as value 'CirruQuote
                , value
              :: 'List $ :: 'List 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List $ :: 'List 'Dynamic
        'read-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-store (value)
            if (struct? value)
              struct-match value
                Store current $ let
                    fields $ .to-map current
                    normalized $ Store :states
                      decode-map-as
                        .unwrap $ get fields :states
                        :: 'Map 'Tag 'Dynamic
                      , :ops $ read-ops
                        .unwrap $ get fields :ops
                  if (= current normalized) current normalized
                _ other $ raise |Expected-Store
              raise |Expected-Store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'Dynamic
        'read-stored-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-stored-store (raw)
            let
                value $ parse-cirru-edn raw
              if (struct? value)
                if
                  = (&struct:get-name value) :Store
                  let
                      fields $ decode-map-as (.to-map value) (:: 'Map 'Tag 'Dynamic)
                    decode-map-as
                      .assoc fields :ops $ read-ops $ .unwrap (get fields :ops)
                      , 'app.schema/Store
                  raise |Expected-Store
                raise |Expected-Store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'String
          :tests $ [] $ %{} 'TestEntry (:name |legacy-quote-tree-and-roundtrip)
            :code $ quote $ let
                restored $ read-stored-store "|%{} 'Store\n  :ops $ quote $\n    rect 中文 :a |b (nested 1)\n  :states $ {} $ :cursor ([])\n"
              assert=
                [] $ [] |rect "|中文" |:a ||b $ [] |nested |1
                , restored.:ops
              assert= restored $ read-stored-store $ format-cirru-edn restored
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states
              {} $ :cursor $ []
              , :ops $ []
          :examples $ []
          :schema $ :: 'app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'update-wire-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-wire-store (store op op-id op-time)
            if (enum? op)
              updater (app.schema/read-store store) op (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
              raise |Expected-Enum-operation
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data)
                app.schema/read-store $ update-states store
                  decode-map-as cursor $ :: 'List 'Dynamic
                  , data
              (:ops data)
                assoc store :ops $ app.schema/read-ops data
              (:hydrate-storage data) (app.schema/read-store data)
              _ $ do (println "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'Enum 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states
