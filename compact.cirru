
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
    :version |0.0.1
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require (respo-ui.core :as ui)
          respo-ui.core :refer $ hsl
          respo.core :refer $ defcomp defeffect <> >> div button textarea span input create-element
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-md.comp.md :refer $ comp-md
          app.config :refer $ dev?
          "\"@mvc-works/codearea" :refer $ codearea
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ or (:cursor states) ([])
                state $ or (:data states)
                  {} $ :content "\""
              div
                {} $ :style (merge ui/global ui/fullscreen ui/row)
                div
                  {} $ :style (merge ui/expand ui/column)
                  div ({}) (<> "\"TODO")
                  comp-codearea $ >> states :code
                ; div
                  {} $ :style ui/expand
                  <> "\"TODO"
                comp-draw $ :ops store
                when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-draw $ quote
          defcomp comp-draw (ops)
            [] (draw-effect ops)
              create-element :canvas $ {} (:style ui/expand)
        |comp-codearea $ quote
          defcomp comp-codearea (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :content "\""
              [] (effect-code)
                textarea $ {}
                  :value $ :content state
                  :placeholder "\"Content"
                  :style $ merge ui/expand ui/textarea
                    {} $ :font-family ui/font-code
                  :on-input $ fn (e d!)
                    d! cursor $ assoc state :content (:value e)
                  :on-keydown $ fn (e d!)
                    let
                        event $ :event e
                      if
                        and (.-metaKey event)
                          = 13 $ .-keyCode event
                        do (.!preventDefault event)
                          d! :ops $ parse-cirru (:content state)
        |effect-code $ quote
          defeffect effect-code () (action el at?)
            ; when (= action :mount) (codearea el)
        |draw-effect $ quote
          defeffect draw-effect (ops) (action el at?)
            when
              or (= action :mount) (= action :update)
              js/console.log ops
              let
                  ctx $ .!getContext el "\"2d"
                  w $ .-offsetWidth el
                  h $ .-offsetHeight el
                set! (.-width el) w
                set! (.-height el) h
                .!clearRect ctx 0 0 w h
                set! (.-fillStyle ctx) (hsl 200 80 80)
                set! (.-strokeStyle ctx) "\"red"
                .!moveTo ctx 10 10
                .!rect ctx 40 40 80 80
                .!stroke ctx
                .!fill ctx
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
            :ops $ []
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          respo.cursor :refer $ update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op
              do (println "\"unknown op:" op) store
              :states $ update-states store data
              :ops $ assoc store :ops data
              :hydrate-storage data
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          respo.core :refer $ render! clear-cache!
          app.comp.container :refer $ comp-container
          app.updater :refer $ updater
          app.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! () $ .!setItem js/localStorage (:storage-key config/site)
            format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .!querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            if config/dev? $ load-console-formatter!
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            .!addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            let
                raw $ .!getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:storage-key "\"workflow")
