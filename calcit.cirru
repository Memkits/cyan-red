
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |reel) (:type :leaf) (:at 1507461830530) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1507461833421) (:by |root)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |store) (:type :leaf) (:at 1507461835738) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:store) (:type :leaf) (:at 1507461837276) (:by |root)
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461838285) (:by |root)
                            :type :expr
                            :at 1507461836110
                            :by |root
                        :type :expr
                        :at 1507461834650
                        :by |root
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |states) (:type :leaf) (:at 1509727105928) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:states) (:type :leaf) (:at 1509727107223) (:by |root)
                              |j $ {} (:text |store) (:type :leaf) (:at 1626777497473) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1509727106316
                            :by |root
                        :type :expr
                        :at 1509727104820
                        :by |root
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1584780923771) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |or) (:type :leaf) (:at 1627849325504) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |:cursor) (:type :leaf) (:at 1584780925829) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1584780926681) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780923944
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584780994497) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780993270
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584780991636
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1584780921790
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1584780889620) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1627849327831) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1584780894689) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1584780900314) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780894090
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1584780901408) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:content) (:type :leaf) (:at 1584780906050) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"") (:type :leaf) (:at 1584780907617) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1584780901741
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1584780901014
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584780889933
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1584780887905
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507461834351
                    :by |root
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1499755354983) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1499755354983) (:by |root)
                                  |j $ {} (:text |ui/global) (:type :leaf) (:at 1521129814235) (:by |root)
                                  |n $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1630950598073) (:by |rJG4IHzWf)
                                  |r $ {} (:text |ui/row) (:type :leaf) (:at 1499755354983) (:by |root)
                                :type :expr
                                :at 1499755354983
                            :type :expr
                            :at 1499755354983
                        :type :expr
                        :at 1499755354983
                      |n $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1630951239824) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1630951240393) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1630951245480) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |merge) (:type :leaf) (:at 1630951250431) (:by |rJG4IHzWf)
                                      |j $ {} (:text |ui/expand) (:type :leaf) (:at 1630951251715) (:by |rJG4IHzWf)
                                      |r $ {} (:text |ui/column) (:type :leaf) (:at 1630951256897) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1630951246456
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1630951240932
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1630951240094
                            :by |rJG4IHzWf
                          |P $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1630951261112) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1630951261726) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1630951261392
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |<>) (:type :leaf) (:at 1630951266183) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"TODO") (:type :leaf) (:at 1630951268721) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1630951263535
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1630951260385
                            :by |rJG4IHzWf
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |comp-codearea) (:type :leaf) (:at 1630950829320) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |>>) (:type :leaf) (:at 1630950917614) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1630950918726) (:by |rJG4IHzWf)
                                  |r $ {} (:text |:code) (:type :leaf) (:at 1630950919979) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1630950917119
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1630950825080
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1630951237325
                        :by |rJG4IHzWf
                      |s $ {}
                        :data $ {}
                          |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630957337375) (:text |;)
                          |T $ {} (:text |div) (:type :leaf) (:at 1630950578934) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1630950580173) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1630950611809) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/expand) (:type :leaf) (:at 1630950614660) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1630950609344
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1630950579526
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1630950583908) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"TODO") (:type :leaf) (:at 1630950585298) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1630950582663
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1630950578448
                        :by |rJG4IHzWf
                      |u $ {}
                        :data $ {}
                          |T $ {} (:text |comp-draw) (:type :leaf) (:at 1630956963993) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:ops) (:type :leaf) (:at 1630957072543) (:by |rJG4IHzWf)
                              |j $ {} (:text |store) (:type :leaf) (:at 1630957073594) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1630957071642
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1630956957368
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |D $ {} (:text |when) (:type :leaf) (:at 1521954057510) (:by |root)
                          |L $ {} (:text |dev?) (:type :leaf) (:at 1521954059290) (:by |root)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |comp-reel) (:type :leaf) (:at 1507461815046) (:by |root)
                              |b $ {}
                                :data $ {}
                                  |D $ {} (:text |>>) (:type :leaf) (:at 1584780611347) (:by |rJG4IHzWf)
                                  |T $ {} (:text |states) (:type :leaf) (:at 1509727101297) (:by |root)
                                  |j $ {} (:text |:reel) (:type :leaf) (:at 1584780613268) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780610581
                                :by |rJG4IHzWf
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461840459) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1507461841342) (:by |root)
                                :type :expr
                                :at 1507461840980
                                :by |root
                            :type :expr
                            :at 1507461809635
                            :by |root
                        :type :expr
                        :at 1521954055333
                        :by |root
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1507461832154
                :by |root
            :type :expr
            :at 1499755354983
          |comp-draw $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1630956974725) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-draw) (:type :leaf) (:at 1630956970585) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |ops) (:type :leaf) (:at 1630957047600) (:by |rJG4IHzWf)
                :type :expr
                :at 1630956970585
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |[]) (:type :leaf) (:at 1630956977179) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |draw-effect) (:type :leaf) (:at 1630956990314) (:by |rJG4IHzWf)
                      |j $ {} (:text |ops) (:type :leaf) (:at 1630957044274) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1630956977771
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |create-element) (:type :leaf) (:at 1630956971936) (:by |rJG4IHzWf)
                      |j $ {} (:text |:canvas) (:type :leaf) (:at 1630956971936) (:by |rJG4IHzWf)
                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1630956971936)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630956971936) (:text |{})
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1630956971936)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630956971936) (:text |:style)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630956971936) (:text |ui/expand)
                    :type :expr
                    :at 1630956971936
                    :by |rJG4IHzWf
                :type :expr
                :at 1630956976220
                :by |rJG4IHzWf
            :type :expr
            :at 1630956970585
            :by |rJG4IHzWf
          |comp-codearea $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1630950832375) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-codearea) (:type :leaf) (:at 1630950830778) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |states) (:type :leaf) (:at 1630950924955) (:by |rJG4IHzWf)
                :type :expr
                :at 1630950830778
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1630950926751) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |cursor) (:type :leaf) (:at 1630950935606) (:by |rJG4IHzWf)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1630950929471) (:by |rJG4IHzWf)
                              |j $ {} (:text |states) (:type :leaf) (:at 1630950933750) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1630950927182
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1630950934222
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1630950937664) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1630950938874) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1630950940373) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1630950941176) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1630950939609
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1630950942079) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:content) (:type :leaf) (:at 1630950956186) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"") (:type :leaf) (:at 1630950993386) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1630950942546
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1630950941708
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1630950937868
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1630950936111
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1630950926988
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |[]) (:type :leaf) (:at 1630950837391) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |effect-code) (:type :leaf) (:at 1630950845305) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630950838604
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |textarea) (:type :leaf) (:at 1630950834143) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1630950834143) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:value) (:type :leaf) (:at 1630950834143) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:content) (:type :leaf) (:at 1630950834143) (:by |rJG4IHzWf)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1630950834143) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1630950834143
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1630950834143
                                :by |rJG4IHzWf
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1630950834143)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |:placeholder)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text "|\"Content")
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |:style)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |merge)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |ui/expand)
                                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |ui/textarea)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |{})
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:font-family) (:type :leaf) (:at 1630951109245) (:by |rJG4IHzWf)
                                              |j $ {} (:text |ui/font-code) (:type :leaf) (:at 1630951112128) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1630951104619
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1630950834143
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1630950834143
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1630950834143
                                :by |rJG4IHzWf
                              |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1630950834143)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |:on-input)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1630950834143)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |fn)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1630950834143)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |e)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |d!)
                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1630950834143)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |d!)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |cursor)
                                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1630950834143)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |assoc)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |state)
                                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |:content)
                                              |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1630950834143)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |:value)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630950834143) (:text |e)
                              |y $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-keydown) (:type :leaf) (:at 1630951626270) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1630951627662) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1630951628337) (:by |rJG4IHzWf)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1630951628917) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1630951628169
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |D $ {} (:text |let) (:type :leaf) (:at 1630951696243) (:by |rJG4IHzWf)
                                          |L $ {}
                                            :data $ {}
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |event) (:type :leaf) (:at 1630951698589) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630951700313) (:text |:event)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630951700313) (:text |e)
                                                    :type :expr
                                                    :at 1630951700313
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1630951697286
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1630951697114
                                            :by |rJG4IHzWf
                                          |T $ {}
                                            :data $ {}
                                              |D $ {} (:text |if) (:type :leaf) (:at 1630951652759) (:by |rJG4IHzWf)
                                              |T $ {}
                                                :data $ {}
                                                  |D $ {} (:text |and) (:type :leaf) (:at 1630951641152) (:by |rJG4IHzWf)
                                                  |L $ {}
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630951704012) (:text |.-metaKey)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630951704012) (:text |event)
                                                    :type :expr
                                                    :at 1630951704012
                                                    :by |rJG4IHzWf
                                                  |T $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |=) (:type :leaf) (:at 1630951691053) (:by |rJG4IHzWf)
                                                      |L $ {} (:text |13) (:type :leaf) (:at 1630951692638) (:by |rJG4IHzWf)
                                                      |T $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |.-keyCode) (:type :leaf) (:at 1630951636834) (:by |rJG4IHzWf)
                                                          |b $ {} (:text |event) (:type :leaf) (:at 1630951707078) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1630951634217
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1630951690281
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1630951640507
                                                :by |rJG4IHzWf
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |do) (:type :leaf) (:at 1630957211770) (:by |rJG4IHzWf)
                                                  |L $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |.!preventDefault) (:type :leaf) (:at 1630957215791) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |event) (:type :leaf) (:at 1630957216485) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1630957212278
                                                    :by |rJG4IHzWf
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1630957089594) (:by |rJG4IHzWf)
                                                      |b $ {} (:text |:ops) (:type :leaf) (:at 1630957099361) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |parse-cirru) (:type :leaf) (:at 1630951673522) (:by |rJG4IHzWf)
                                                          |T $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:content) (:type :leaf) (:at 1630951668667) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |state) (:type :leaf) (:at 1630951669305) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1630951666696
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1630951669854
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1630951658319
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1630957207099
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1630951652211
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1630951694074
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1630951627392
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1630951619304
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1630950834143
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1630950834143
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1630950835548
                    :by |rJG4IHzWf
                :type :expr
                :at 1630950926130
                :by |rJG4IHzWf
            :type :expr
            :at 1630950830778
            :by |rJG4IHzWf
          |effect-code $ {}
            :data $ {}
              |T $ {} (:text |defeffect) (:type :leaf) (:at 1630950850371) (:by |rJG4IHzWf)
              |j $ {} (:text |effect-code) (:type :leaf) (:at 1630950847291) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1630950847291
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |action) (:type :leaf) (:at 1630950858164) (:by |rJG4IHzWf)
                  |b $ {} (:text |el) (:type :leaf) (:at 1630950862912) (:by |rJG4IHzWf)
                  |j $ {} (:text |at?) (:type :leaf) (:at 1630950860800) (:by |rJG4IHzWf)
                :type :expr
                :at 1630950855408
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1630957285133) (:text |;)
                  |T $ {} (:text |when) (:type :leaf) (:at 1630950865584) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |=) (:type :leaf) (:at 1630950866815) (:by |rJG4IHzWf)
                      |j $ {} (:text |action) (:type :leaf) (:at 1630950870077) (:by |rJG4IHzWf)
                      |r $ {} (:text |:mount) (:type :leaf) (:at 1630950872995) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1630950866471
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |codearea) (:type :leaf) (:at 1630951060002) (:by |rJG4IHzWf)
                      |j $ {} (:text |el) (:type :leaf) (:at 1630950883575) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1630950873883
                    :by |rJG4IHzWf
                :type :expr
                :at 1630950864774
                :by |rJG4IHzWf
            :type :expr
            :at 1630950847291
            :by |rJG4IHzWf
          |draw-effect $ {}
            :data $ {}
              |T $ {} (:text |defeffect) (:type :leaf) (:at 1630956993380) (:by |rJG4IHzWf)
              |j $ {} (:text |draw-effect) (:type :leaf) (:at 1630956990945) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |ops) (:type :leaf) (:at 1630957041517) (:by |rJG4IHzWf)
                :type :expr
                :at 1630956990945
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |action) (:type :leaf) (:at 1630956999615) (:by |rJG4IHzWf)
                  |j $ {} (:text |el) (:type :leaf) (:at 1630957000891) (:by |rJG4IHzWf)
                  |r $ {} (:text |at?) (:type :leaf) (:at 1630957002216) (:by |rJG4IHzWf)
                :type :expr
                :at 1630956994465
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |T $ {} (:text |when) (:type :leaf) (:at 1630957011851) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |or) (:type :leaf) (:at 1630957013232) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1630957013765) (:by |rJG4IHzWf)
                          |j $ {} (:text |action) (:type :leaf) (:at 1630957015506) (:by |rJG4IHzWf)
                          |r $ {} (:text |:mount) (:type :leaf) (:at 1630957018106) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957013529
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1630957013765) (:by |rJG4IHzWf)
                          |j $ {} (:text |action) (:type :leaf) (:at 1630957015506) (:by |rJG4IHzWf)
                          |r $ {} (:text |:update) (:type :leaf) (:at 1630957022491) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957013529
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1630957012444
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |js/console.log) (:type :leaf) (:at 1630957151876) (:by |rJG4IHzWf)
                      |j $ {} (:text |ops) (:type :leaf) (:at 1630957038826) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1630957024525
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |yT $ {}
                        :data $ {}
                          |T $ {} (:text |.!fill) (:type :leaf) (:at 1630957614322) (:by |rJG4IHzWf)
                          |j $ {} (:text |ctx) (:type :leaf) (:at 1630957615323) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957612505
                        :by |rJG4IHzWf
                      |T $ {} (:text |let) (:type :leaf) (:at 1630957351678) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |ctx) (:type :leaf) (:at 1630957354160) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |.!getContext) (:type :leaf) (:at 1630957359895) (:by |rJG4IHzWf)
                                  |j $ {} (:text |el) (:type :leaf) (:at 1630957361560) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"2d") (:type :leaf) (:at 1630957362971) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1630957355728
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1630957352359
                            :by |rJG4IHzWf
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |w) (:type :leaf) (:at 1630957391417) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |.-offsetWidth) (:type :leaf) (:at 1630957399466) (:by |rJG4IHzWf)
                                  |j $ {} (:text |el) (:type :leaf) (:at 1630957400931) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1630957391973
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1630957390476
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |h) (:type :leaf) (:at 1630957403635) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |.-offsetHeight) (:type :leaf) (:at 1630957406547) (:by |rJG4IHzWf)
                                  |j $ {} (:text |el) (:type :leaf) (:at 1630957400931) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1630957391973
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1630957390476
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1630957352199
                        :by |rJG4IHzWf
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |set!) (:type :leaf) (:at 1630957538579) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.-width) (:type :leaf) (:at 1630957541521) (:by |rJG4IHzWf)
                              |j $ {} (:text |el) (:type :leaf) (:at 1630957542966) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1630957539217
                            :by |rJG4IHzWf
                          |r $ {} (:text |w) (:type :leaf) (:at 1630957545732) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957535856
                        :by |rJG4IHzWf
                      |p $ {}
                        :data $ {}
                          |T $ {} (:text |set!) (:type :leaf) (:at 1630957538579) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.-height) (:type :leaf) (:at 1630957548846) (:by |rJG4IHzWf)
                              |j $ {} (:text |el) (:type :leaf) (:at 1630957542966) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1630957539217
                            :by |rJG4IHzWf
                          |r $ {} (:text |h) (:type :leaf) (:at 1630957550649) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957535856
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |.!clearRect) (:type :leaf) (:at 1630957412998) (:by |rJG4IHzWf)
                          |T $ {} (:text |ctx) (:type :leaf) (:at 1630957370554) (:by |rJG4IHzWf)
                          |j $ {} (:text |0) (:type :leaf) (:at 1630957379917) (:by |rJG4IHzWf)
                          |r $ {} (:text |0) (:type :leaf) (:at 1630957410477) (:by |rJG4IHzWf)
                          |v $ {} (:text |w) (:type :leaf) (:at 1630957410774) (:by |rJG4IHzWf)
                          |x $ {} (:text |h) (:type :leaf) (:at 1630957411103) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957365482
                        :by |rJG4IHzWf
                      |t $ {}
                        :data $ {}
                          |T $ {} (:text |set!) (:type :leaf) (:at 1630957578269) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.-fillStyle) (:type :leaf) (:at 1630957586404) (:by |rJG4IHzWf)
                              |j $ {} (:text |ctx) (:type :leaf) (:at 1630957588018) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1630957578772
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |hsl) (:type :leaf) (:at 1630957627284) (:by |rJG4IHzWf)
                              |j $ {} (:text |200) (:type :leaf) (:at 1630957628809) (:by |rJG4IHzWf)
                              |r $ {} (:text |80) (:type :leaf) (:at 1630957629171) (:by |rJG4IHzWf)
                              |v $ {} (:text |80) (:type :leaf) (:at 1630957629838) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1630957626370
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1630957570352
                        :by |rJG4IHzWf
                      |u $ {}
                        :data $ {}
                          |T $ {} (:text |set!) (:type :leaf) (:at 1630957578269) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.-strokeStyle) (:type :leaf) (:at 1630957602165) (:by |rJG4IHzWf)
                              |j $ {} (:text |ctx) (:type :leaf) (:at 1630957588018) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1630957578772
                            :by |rJG4IHzWf
                          |r $ {} (:text "|\"red") (:type :leaf) (:at 1630957589790) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957570352
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |.!moveTo) (:type :leaf) (:at 1630957448712) (:by |rJG4IHzWf)
                          |j $ {} (:text |ctx) (:type :leaf) (:at 1630957449990) (:by |rJG4IHzWf)
                          |r $ {} (:text |10) (:type :leaf) (:at 1630957450787) (:by |rJG4IHzWf)
                          |v $ {} (:text |10) (:type :leaf) (:at 1630957451228) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957413729
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |.!rect) (:type :leaf) (:at 1630957455602) (:by |rJG4IHzWf)
                          |j $ {} (:text |ctx) (:type :leaf) (:at 1630957457179) (:by |rJG4IHzWf)
                          |r $ {} (:text |40) (:type :leaf) (:at 1630957458722) (:by |rJG4IHzWf)
                          |v $ {} (:text |40) (:type :leaf) (:at 1630957459138) (:by |rJG4IHzWf)
                          |x $ {} (:text |80) (:type :leaf) (:at 1630957520192) (:by |rJG4IHzWf)
                          |y $ {} (:text |80) (:type :leaf) (:at 1630957520489) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957453138
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |.!stroke) (:type :leaf) (:at 1630957464084) (:by |rJG4IHzWf)
                          |j $ {} (:text |ctx) (:type :leaf) (:at 1630957465697) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957460070
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1630957350993
                    :by |rJG4IHzWf
                :type :expr
                :at 1630957002789
                :by |rJG4IHzWf
            :type :expr
            :at 1630956990945
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root)
                      :type :expr
                      :at 1519699093683
                      :by |root
                  :type :expr
                  :at 1519699088529
                  :by |root
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788377809) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root)
                      :type :expr
                      :at 1521954065004
                      :by |root
                  :type :expr
                  :at 1521954061310
                  :by |root
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text "|\"@mvc-works/codearea") (:type :leaf) (:at 1630950894178) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1630951071695) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |codearea) (:type :leaf) (:at 1630951066792) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1630951072100
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1630950886045
                  :by |rJG4IHzWf
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516527080962) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |t $ {}
                  :data $ {}
                    |T $ {} (:text |respo-ui.core) (:type :leaf) (:at 1630957635757) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1630957638657) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |hsl) (:type :leaf) (:at 1630957639402) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1630957638905
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1630957632750
                  :by |rJG4IHzWf
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540958704705) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1508946162679) (:by |root)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:text |textarea) (:type :leaf) (:at 1512359490531) (:by |rJG4IHzWf)
                        |yT $ {} (:text |input) (:type :leaf) (:at 1552321107012) (:by |rJG4IHzWf)
                        |yj $ {} (:text |create-element) (:type :leaf) (:at 1630950644521) (:by |rJG4IHzWf)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
                        |l $ {} (:text |defeffect) (:type :leaf) (:at 1573355389740) (:by |rJG4IHzWf)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1499755354983) (:by |root)
                        |t $ {} (:text |>>) (:type :leaf) (:at 1584780606618) (:by |rJG4IHzWf)
                        |v $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                        |x $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root)
                        |y $ {} (:text |span) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |x $ {}
                  :data $ {}
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |reel.comp.reel) (:type :leaf) (:at 1507461855480) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507461856264) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-reel) (:type :leaf) (:at 1507461858342) (:by |root)
                      :type :expr
                      :at 1507461856484
                      :by |root
                  :type :expr
                  :at 1507461845717
                  :by |root
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1584781007054) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584781007486) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584781007287
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584781004285
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:ops) (:type :leaf) (:at 1630957065960) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |[]) (:type :leaf) (:at 1630957066592) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957066360
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1630957064882
                    :by |rJG4IHzWf
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
          :type :expr
          :at 1499755354983
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text |data) (:type :leaf) (:at 1584874633844) (:by |rJG4IHzWf)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1627849233602) (:by |rJG4IHzWf)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |l $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1627849235639) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1627849236652) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"unknown op:") (:type :leaf) (:at 1627849247340) (:by |rJG4IHzWf)
                          |r $ {} (:text |op) (:type :leaf) (:at 1627849241947) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627849235881
                        :by |rJG4IHzWf
                      |r $ {} (:text |store) (:type :leaf) (:at 1627849245294) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627849235240
                    :by |rJG4IHzWf
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1507399855618) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update-states) (:type :leaf) (:at 1584874626558) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1584874628374) (:by |rJG4IHzWf)
                          |r $ {} (:text |data) (:type :leaf) (:at 1584874632002) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874625235
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507399852251
                    :by |root
                  |q $ {}
                    :data $ {}
                      |T $ {} (:text |:ops) (:type :leaf) (:at 1630957108425) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |assoc) (:type :leaf) (:at 1630957110286) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1630957112821) (:by |rJG4IHzWf)
                          |r $ {} (:text |:ops) (:type :leaf) (:at 1630957114149) (:by |rJG4IHzWf)
                          |v $ {} (:text |data) (:type :leaf) (:at 1630957116529) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1630957109163
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1630957107476
                    :by |rJG4IHzWf
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root)
                      |j $ {} (:text |data) (:type :leaf) (:at 1584874637339) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1518157547521
                    :by |root
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.updater) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1584874616480) (:by |rJG4IHzWf)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.cursor) (:type :leaf) (:at 1584874620034) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1584874621356) (:by |rJG4IHzWf)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |update-states) (:type :leaf) (:at 1584874623096) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1584874621524
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1584874616720
                  :by |rJG4IHzWf
              :type :expr
              :at 1584874614885
              :by |rJG4IHzWf
          :type :expr
          :at 1499755354983
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |render!) (:type :leaf) (:at 1624469436438) (:by |rJG4IHzWf)
                  |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {} (:text |@*reel) (:type :leaf) (:at 1507400119272) (:by |root)
                    :type :expr
                    :at 1499755354983
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1623915174985) (:by |rJG4IHzWf)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |persist-storage! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1533919517365) (:by |rJG4IHzWf)
              |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |.!setItem) (:type :leaf) (:at 1623915179125) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956703087) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1624469402829) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:store) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                          |j $ {} (:text |@*reel) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1533919515671
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
            :type :expr
            :at 1533919515671
            :by |rJG4IHzWf
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |.!querySelector) (:type :leaf) (:at 1624469553191) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/document) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text ||.app) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |*reel $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1610792986987) (:by |rJG4IHzWf)
              |j $ {} (:text |*reel) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |->) (:type :leaf) (:at 1507399778895) (:by |root)
                  |T $ {} (:text |reel-schema/reel) (:type :leaf) (:at 1507399776350) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:base) (:type :leaf) (:at 1507401405076) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:store) (:type :leaf) (:at 1507399793097) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                :type :expr
                :at 1507399777531
                :by |root
            :type :expr
            :at 1499755354983
          |main! $ {}
            :data $ {}
              |yD $ {}
                :data $ {}
                  |T $ {} (:text |listen-devtools!) (:type :leaf) (:at 1507461739167) (:by |root)
                  |j $ {} (:text ||k) (:type :leaf) (:at 1624007376825) (:by |rJG4IHzWf)
                  |r $ {} (:text |dispatch!) (:type :leaf) (:at 1507461693919) (:by |root)
                :type :expr
                :at 1507461684494
                :by |root
              |yL $ {}
                :data $ {}
                  |T $ {} (:text |.!addEventListener) (:type :leaf) (:at 1624469377233) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1518157453505) (:by |root)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1518157458163) (:by |root)
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1612344222204) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |event) (:type :leaf) (:at 1612344223520) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1612344222530
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1612344224533
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1612344221583
                    :by |rJG4IHzWf
                :type :expr
                :at 1518157357847
                :by |root
              |yN $ {}
                :data $ {}
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
              |yP $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1518157495438) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1518157496930) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.!getItem) (:type :leaf) (:at 1623915188297) (:by |rJG4IHzWf)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157504638) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956709260) (:by |rJG4IHzWf)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1527788293499) (:by |root)
                                :type :expr
                                :at 1518157506313
                                :by |root
                            :type :expr
                            :at 1518157497615
                            :by |root
                        :type :expr
                        :at 1518157495826
                        :by |root
                    :type :expr
                    :at 1518157495644
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |when) (:type :leaf) (:at 1533919640958) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1518157515786) (:by |root)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1518157516878) (:by |root)
                        :type :expr
                        :at 1518157515117
                        :by |root
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1518157523818) (:by |root)
                          |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157669936) (:by |root)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1624469412598) (:by |rJG4IHzWf)
                              |j $ {} (:text |raw) (:type :leaf) (:at 1518157531240) (:by |root)
                            :type :expr
                            :at 1518157527987
                            :by |root
                        :type :expr
                        :at 1518157521635
                        :by |root
                    :type :expr
                    :at 1518157514334
                    :by |root
                :type :expr
                :at 1518157492640
                :by |root
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text "||App started.") (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |main!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |s $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1630957171235) (:by |rJG4IHzWf)
                  |j $ {} (:text |config/dev?) (:type :leaf) (:at 1630957173477) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |load-console-formatter!) (:type :leaf) (:at 1630957179385) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1630957175910
                    :by |rJG4IHzWf
                :type :expr
                :at 1630957168028
                :by |rJG4IHzWf
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874434638) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1544874509800) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874440190) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874446442) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874449063) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874452316) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544874440404
                    :by |rJG4IHzWf
                :type :expr
                :at 1544874433785
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |y $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399915531) (:by |root)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1499755354983) (:by |root)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |reel) (:type :leaf) (:at 1612280609284) (:by |rJG4IHzWf)
                          |j $ {} (:text |prev) (:type :leaf) (:at 1612280610651) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1499755354983
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |D $ {} (:text |when) (:type :leaf) (:at 1547437687530) (:by |root)
                  |L $ {}
                    :data $ {}
                      |D $ {} (:text |and) (:type :leaf) (:at 1584874662518) (:by |rJG4IHzWf)
                      |T $ {} (:text |config/dev?) (:type :leaf) (:at 1547437691006) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |not=) (:type :leaf) (:at 1584874664551) (:by |rJG4IHzWf)
                          |j $ {} (:text |op) (:type :leaf) (:at 1584874665829) (:by |rJG4IHzWf)
                          |r $ {} (:text |:states) (:type :leaf) (:at 1584874671745) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874663522
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1584874661674
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |j $ {} (:text |println) (:type :leaf) (:at 1518156276516) (:by |root)
                      |r $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1547437698992) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1518156280471) (:by |root)
                    :type :expr
                    :at 1518156274050
                    :by |root
                :type :expr
                :at 1547437686766
                :by |root
              |v $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399899641) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |reel-updater) (:type :leaf) (:at 1507399887573) (:by |root)
                      |j $ {} (:text |updater) (:type :leaf) (:at 1507399888500) (:by |root)
                      |r $ {} (:text |@*reel) (:type :leaf) (:at 1507399891576) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1507399892687) (:by |root)
                      |x $ {} (:text |op-data) (:type :leaf) (:at 1507399894594) (:by |root)
                    :type :expr
                    :at 1507399884621
                    :by |root
                :type :expr
                :at 1584780634192
                :by |rJG4IHzWf
            :type :expr
            :at 1499755354983
          |reload! $ {}
            :data $ {}
              |D $ {} (:text |defn) (:type :leaf) (:at 1626201153853) (:by |rJG4IHzWf)
              |L $ {} (:text |reload!) (:type :leaf) (:at 1626201157449) (:by |rJG4IHzWf)
              |P $ {}
                :data $ {}
                :type :expr
                :at 1626201163076
                :by |rJG4IHzWf
              |T $ {}
                :data $ {}
                  |D $ {} (:text |if) (:type :leaf) (:at 1626201192115) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |nil?) (:type :leaf) (:at 1626201534497) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1626201194806) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626201192626
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1626201161775) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1614750747553
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |clear-cache!) (:type :leaf) (:at 1507461702453) (:by |root)
                        :type :expr
                        :at 1507461699387
                        :by |root
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |add-watch) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |reel) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                  |j $ {} (:text |prev) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1612280627439
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1612280627439
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1612280627439
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1612280627439
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |reset!) (:type :leaf) (:at 1507461706990) (:by |root)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1507461708965) (:by |root)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |refresh-reel) (:type :leaf) (:at 1507461730190) (:by |root)
                              |j $ {} (:text |@*reel) (:type :leaf) (:at 1507461719097) (:by |root)
                              |r $ {} (:text |schema/store) (:type :leaf) (:at 1507461721870) (:by |root)
                              |v $ {} (:text |updater) (:type :leaf) (:at 1507461722724) (:by |root)
                            :type :expr
                            :at 1507461710020
                            :by |root
                        :type :expr
                        :at 1507461704162
                        :by |root
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |hud!) (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"ok~") (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"Ok") (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1626777542168
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1626201164538
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |hud!) (:type :leaf) (:at 1626290831868) (:by |rJG4IHzWf)
                      |b $ {} (:text "|\"error") (:type :leaf) (:at 1626290930377) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1626201209903) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626201203433
                    :by |rJG4IHzWf
                :type :expr
                :at 1626201191606
                :by |rJG4IHzWf
            :type :expr
            :at 1626201152815
            :by |rJG4IHzWf
          |repeat! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1610793045335) (:by |rJG4IHzWf)
              |j $ {} (:text |repeat!) (:type :leaf) (:at 1610793045335) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |duration) (:type :leaf) (:at 1610793047914) (:by |rJG4IHzWf)
                  |j $ {} (:text |cb) (:type :leaf) (:at 1610793055850) (:by |rJG4IHzWf)
                :type :expr
                :at 1610793045335
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1610793066184) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1610793079545) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                        :type :expr
                        :at 1610793080160
                        :by |rJG4IHzWf
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |cb) (:type :leaf) (:at 1610793091010) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610793090420
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |repeat!) (:type :leaf) (:at 1610793083422) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |*) (:type :leaf) (:at 1610794352418) (:by |rJG4IHzWf)
                              |j $ {} (:text |1000) (:type :leaf) (:at 1610794467961) (:by |rJG4IHzWf)
                              |r $ {} (:text |duration) (:type :leaf) (:at 1610794352418) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1610794352418
                            :by |rJG4IHzWf
                          |r $ {} (:text |cb) (:type :leaf) (:at 1610794361837) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610793080941
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1610793079106
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |*) (:type :leaf) (:at 1610793072002) (:by |rJG4IHzWf)
                      |L $ {} (:text |1000) (:type :leaf) (:at 1610794470143) (:by |rJG4IHzWf)
                      |T $ {} (:text |duration) (:type :leaf) (:at 1610793071233) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1610793071391
                    :by |rJG4IHzWf
                :type :expr
                :at 1610793056606
                :by |rJG4IHzWf
            :type :expr
            :at 1610793045335
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.main) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1626201180939) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626201183958) (:by |rJG4IHzWf)
                    |r $ {} (:text |build-errors) (:type :leaf) (:at 1626201187310) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1626201173819
                  :by |rJG4IHzWf
                |yyj $ {}
                  :data $ {}
                    |T $ {} (:text "|\"bottom-tip") (:type :leaf) (:at 1626290810913) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626290816153) (:by |rJG4IHzWf)
                    |r $ {} (:text |hud!) (:type :leaf) (:at 1626290825711) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1626290808117
                  :by |rJG4IHzWf
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |reel.util) (:type :leaf) (:at 1507399678694) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399680625) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |listen-devtools!) (:type :leaf) (:at 1518156292092) (:by |root)
                      :type :expr
                      :at 1507399680857
                      :by |root
                  :type :expr
                  :at 1507399674125
                  :by |root
                |yr $ {}
                  :data $ {}
                    |j $ {} (:text |reel.core) (:type :leaf) (:at 1507399687162) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399688098) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |reel-updater) (:type :leaf) (:at 1507399691010) (:by |root)
                        |q $ {} (:text |refresh-reel) (:type :leaf) (:at 1518156288482) (:by |root)
                      :type :expr
                      :at 1507399688322
                      :by |root
                  :type :expr
                  :at 1507399683930
                  :by |root
                |yv $ {}
                  :data $ {}
                    |j $ {} (:text |reel.schema) (:type :leaf) (:at 1507399717674) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1507399755750) (:by |root)
                    |v $ {} (:text |reel-schema) (:type :leaf) (:at 1507399757678) (:by |root)
                  :type :expr
                  :at 1507399715229
                  :by |root
                |yy $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788304925) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788306048) (:by |root)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788306884) (:by |root)
                  :type :expr
                  :at 1527788302920
                  :by |root
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |render!) (:type :leaf) (:at 1499755354983) (:by |root)
                        |r $ {} (:text |clear-cache!) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |app.updater) (:type :leaf) (:at 1508556737455) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.config $ {}
        :defs $ {}
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |5 $ {} (:text |=) (:type :leaf) (:at 1624469715390) (:by |rJG4IHzWf)
                  |D $ {} (:text "|\"dev") (:type :leaf) (:at 1624469714304) (:by |rJG4IHzWf)
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |get-env) (:type :leaf) (:at 1624469706777) (:by |rJG4IHzWf)
                      |T $ {} (:text "|\"mode") (:type :leaf) (:at 1624469708397) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1624469701389
                    :by |rJG4IHzWf
                :type :expr
                :at 1624469709435
                :by |rJG4IHzWf
            :type :expr
            :at 1544873875614
            :by |rJG4IHzWf
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root)
              |r $ {}
                :data $ {}
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"workflow") (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544956719115
                    :by |rJG4IHzWf
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root)
                :type :expr
                :at 1518157327696
                :by |root
            :type :expr
            :at 1545933382603
            :by |root
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1527788237503) (:by |root)
          :type :expr
          :at 1527788237503
          :by |root
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
