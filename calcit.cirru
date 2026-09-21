
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
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
                cursor $ &map:get states-map :cursor
                state $ assert-type
                  option:unwrap-or (get states-map :data)
                    {} $ :content |
                  :: 'Map 'Tag 'Dynamic
                content $ assert-type (&map:get state :content) 'String
              [] (effect-code)
                textarea $ {} (:value content) (:placeholder |Content)
                  :style $ merge ui/expand ui/textarea $ {} (:font-family ui/font-code)
                  :on-input $ fn (e d!)
                    d! $ :: :states cursor $ assoc state :content
                      event-value $ assert-type e $ :: 'Map 'Tag 'Dynamic
                  :on-keydown $ fn (e d!)
                    when
                      submit-shortcut? $ assert-type e $ :: 'Map 'Tag 'Dynamic
                      d! $ :: :ops $ parse-cirru content
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ assert-type (&map:get reel :store) 'app.schema/Store
                states store.:states
                ops store.:ops
              div
                {} $ :style $ merge ui/global ui/fullscreen ui/row
                div
                  {} $ :style $ merge ui/expand ui/column
                  div ({}) (<> |TODO)
                  comp-codearea $ assert-type (>> states :code) (:: 'Map 'Tag 'Dynamic)
                comp-draw ops
                when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/Reel
            :features $ #{} :js-ffi
        'comp-draw $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-draw (ops)
            [] (draw-effect ops)
              create-element :canvas $ {} $ :style ui/expand
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'List 'Dynamic
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
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] $ :: 'List 'Dynamic
            :features $ #{} :js-ffi
        'effect-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-code () (action el at?)
            ; when (= action :mount) (codearea el)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event)
            assert-type (&map:get event :value) 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'submit-shortcut? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn submit-shortcut? (event)
            let
                keyboard $ unsafe-coerce (&map:get event :event) js-ffi.browser/KeyboardEventHost
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
            respo-md.comp.md :refer $ comp-md
            app.config :refer $ dev?
            |@mvc-works/codearea :refer $ codearea
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
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
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref 'app.schema/Reel
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ assert-type (reel-updater updater @*reel op) 'app.schema/Reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if config/dev? $ load-console-formatter!
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            add-event-listener! |beforeunload $ fn (_) (persist-storage!)
            repeat! 60 persist-storage!
            match
              storage-get $ config/site :storage-key
              (:some raw)
                do
                  dispatch! $ :: :hydrate-storage $ parse-cirru-edn raw
                  , &unit
              (:none) &unit
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set! (config/site :storage-key)
              format-cirru-edn $ &map:get @*reel :store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ assert-type (refresh-reel @*reel schema/store updater) 'app.schema/Reel
                hud! |ok~ |Ok
              hud! |error build-errors
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
        'Reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def Reel &unit
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ :: 'Map 'Tag 'Dynamic
            :ops $ :: 'List 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
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
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data) (update-states store cursor data)
              (:ops data) (assoc store :ops data)
              (:hydrate-storage data) data
              _ $ do (println "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'Enum 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states
