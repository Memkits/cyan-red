
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'CanvasContextHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait CanvasContextHost (:fill-style 'String) (:stroke-style 'String)
            .clear-rect! $ Fn app.comp.container/CanvasContextHost Number Number Number Number $ -> Unit
            .move-to! $ Fn app.comp.container/CanvasContextHost Number Number $ -> Unit
            .rect! $ Fn app.comp.container/CanvasContextHost Number Number Number Number $ -> Unit
            .stroke! $ Fn app.comp.container/CanvasContextHost $ -> Unit
            .fill! $ Fn app.comp.container/CanvasContextHost $ -> Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:clear-rect! |clearRect) (:fill! |fill) (:fill-style |fillStyle) (:move-to! |moveTo) (:rect! |rect) (:stroke! |stroke) (:stroke-style |strokeStyle)
            :writable $ #{} :fill-style :stroke-style
          :schema $ quote Trait
        'CanvasElementHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait CanvasElementHost (:offset-width 'Number) (:offset-height 'Number) (:width 'Number) (:height 'Number)
            .get-context $ Fn app.comp.container/CanvasElementHost String $ -> (JsNullish JsObject)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:get-context |getContext) (:height |height) (:offset-height |offsetHeight) (:offset-width |offsetWidth) (:width |width)
            :writable $ #{} :height :width
          :schema $ quote Trait
        'comp-codearea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-codearea (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  List respo.schema/CoordKey
                state $ decode-map-as
                  .unwrap-or (get states :data)
                    {} $ :content |
                  Map Tag Dynamic
                content $ decode-map-as
                  .unwrap $ get state :content
                  , 'String
              [] (effect-code)
                textarea $ {} (:value content) (:placeholder |Content)
                  :style $ .merge ui/expand ui/textarea $ {} (:font-family ui/font-code)
                  :on-input $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    d! $ app.schema/Op :states cursor $ assoc state :content (event-value e)
                  :on-keydown $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    when (submit-shortcut? e)
                      d! $ app.schema/Op :ops $ match (.parse-cirru-list content)
                        (:ok parsed)
                          decode-map-as parsed $ List $ List app.schema/CirruNode
                        (:err message) (raise message)
                    , &unit
          :examples $ []
          :schema $ quote $ Fn respo.schema/States (-> respo.schema/Component) (:features :js-ffi)
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control!)
            let
                store $ :store reel
                states store.:states
                ops store.:ops
              div
                {} $ :style $ .merge ui/global ui/fullscreen ui/row
                div
                  {} $ :style $ .merge ui/expand ui/column
                  div ({}) (<> |TODO)
                  comp-codearea $ >> states :code
                comp-draw ops
                if dev?
                  Some $ comp-typed-reel (>> states :reel) reel ({}) on-control!
                  , None
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State app.schema/Op app.schema/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :features :js-ffi
        'comp-draw $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-draw (ops)
            [] (draw-effect ops)
              create-element :canvas $ {} $ :style ui/expand
          :examples $ []
          :schema $ quote $ Fn
            List $ List app.schema/CirruNode
            -> respo.schema/Component
        'draw-effect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect draw-effect (ops) (action el at?)
            when
              or (= action :mount) (= action :update)
              let
                  element $ js-cast el CanvasElementHost
                  ctx $ js-cast (.get-context element |2d) CanvasContextHost
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
          :schema $ quote $ Fn
            List $ List app.schema/CirruNode
            -> respo.schema/Effect
            :features :js-ffi
        'effect-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-code () (action el at?)
            ; when (= action :mount) (codearea el)
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Effect)
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event)
            decode-map-as (:value event) 'String
          :examples $ []
          :schema $ quote $ Fn respo.schema/RespoEvent (-> String)
        'submit-shortcut? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn submit-shortcut? (event)
            if
              and
                = true $ :meta? event
                = |Enter $ :key event
              do
                .prevent-default! $ :event event
                , true
              , false
          :examples $ []
          :schema $ quote $ Fn respo.schema/RespoEvent (-> Bool) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.core :as ui)
            respo-ui.core :refer $ hsl
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input create-element
            respo.comp.space :refer $ =<
            app.config :refer $ dev?
            |@mvc-works/codearea :refer $ codearea
            reel.comp.reel :refer $ comp-typed-reel
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |workflow
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref (typed/State schema/Op schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            dispatch-resolved! op
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit)
        'dispatch-resolved! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-resolved! (op)
            hint-fn $ Fn app.schema/ResolvedOp (-> Unit) (:features :js-ffi)
            reset! *reel $ match op
              (reel.typed/Control control) (typed/apply-control updater @*reel control)
              (app.schema/Op action)
                typed/record-op updater @*reel action (generate-id!) (host/now-ms)
            , &unit
          :examples $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if config/dev? $ load-console-formatter!
            println "|Running mode:" $ if config/dev? |dev |release
            match
              storage-get $ .unwrap $ get config/site :storage-key
              (:some raw)
                do
                  dispatch-resolved! $ schema/Op :hydrate-storage $ app.schema/read-stored-store raw
                  , &unit
              (:none) &unit
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k on-control!
            add-event-listener! |beforeunload $ fn (_) (persist-storage!)
            repeat! 60 persist-storage!
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            .unwrap $ respo.ffi.browser/query-selector |.app
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control)
            when config/dev? $ println |Dispatch: control
            dispatch-resolved! control
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ comp-container @*reel on-control!
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            set-interval! cb $ * 1000 duration
            , &unit
          :examples $ []
          :schema $ quote $ Fn Number
            Fn $ -> Unit
            -> Unit
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :refer $ query-selector add-event-listener! set-interval! storage-get storage-set!
            reel.typed :as typed
            js-ffi.shared :as host
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'CirruNode $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion CirruNode String (List CirruNode)
          :examples $ []
          :schema $ quote UnionDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) Dynamic
            :ops $ List $ List app.schema/CirruNode
            :hydrate-storage app.schema/Store
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map Tag Dynamic
            :ops $ List $ List app.schema/CirruNode
          :examples $ []
          :schema $ quote StructDef
        'StoredOps $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion StoredOps CirruQuote
            List $ List CirruNode
          :examples $ []
          :schema $ quote UnionDef
        'read-ops $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-ops (value)
            match value
              (CirruQuote tree)
                decode-map-as
                  .unwrap $ .to-list tree
                  List $ List CirruNode
              (List nodes) nodes
          :examples $ []
          :schema $ quote $ Fn StoredOps
            -> $ List $ List CirruNode
        'read-stored-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-stored-store (raw)
            let
                value $ parse-cirru-edn raw
              if (struct? value)
                if
                  = (&struct:get-name value) :Store
                  let
                      fields $ decode-map-as (&struct:to-map value) (Map Tag Dynamic)
                    decode-map-as
                      .assoc fields :ops $ read-ops $ decode-map-as
                        .unwrap $ get fields :ops
                        , StoredOps
                      , 'app.schema/Store
                  raise |Expected-Store
                raise |Expected-Store
          :examples $ []
          :schema $ quote $ Fn String (-> Store)
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
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data)
                struct-with store $ :states $ decode-map-as
                  update-state-tree (:states store) cursor data
                  Map Tag Dynamic
              (:ops data) (assoc store :ops data)
              (:hydrate-storage data) data
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op String Number (-> app.schema/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-state-tree
