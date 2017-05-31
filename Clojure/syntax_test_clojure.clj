;; SYNTAX TEST "Packages/Clojure/Clojure.sublime-syntax"

(ns example.st
;; <- meta.function.namespace.clojure
;;^^^^^^^^^^^^^ meta.function.namespace.clojure
;;^ support.function.namespace.clojure
;;  ^^^^^^^ entity.name.namespace.clojure source.symbol.clojure
;;         ^ entity.name.namespace.clojure keyword.operator.classpath.clojure
;;          ^^ entity.name.namespace.clojure source.symbol.clojure
  (:require [clj-http.client :as http]
;; ^^^^^^^^ support.other.keyword.namespace.clojure
;;           ^^^^^^^^ source.symbol.clojure
;;                   ^ keyword.operator.classpath.clojure
;;                    ^^^^^^ source.symbol.clojure
;;                           ^^^ support.other.keyword.namespace.clojure
;;                               ^^^^ source.symbol.clojure
            [clojure.string :as str]))
;;                                   ^ meta.function.namespace.clojure
;;                                    ^ - meta.function.namespace.clojure

  (+ 3 3)
;;<- - meta.sexpr.clojure
;;^^^^^^^ meta.sexpr.clojure
;;       ^ - meta.sexpr.clojure
;; ^ keyword.operator.clojure
;;   ^ constant.numeric.float.clojure
;;     ^ constant.numeric.float.clojure

  (/ 10 3)
;;<- - meta.sexpr.clojure
;;^^^^^^^^ meta.sexpr.clojure
;;        ^ - meta.sexpr.clojure
;; ^ keyword.operator.clojure
;;   ^^ constant.numeric.float.clojure
;;      ^ constant.numeric.float.clojure

  (/ 10 3.0)
;;<- - meta.sexpr.clojure
;;^^^^^^^^^^ meta.sexpr.clojure
;;          ^ - meta.sexpr.clojure
;; ^ keyword.operator.clojure
;;   ^^ constant.numeric.float.clojure
;;      ^^^ constant.numeric.float.clojure

  (+ 1 2 3 4 5 6)
;;<- - meta.sexpr.clojure - meta.function.clojure
;;^^^^^^^^^^^^^^^ meta.sexpr.clojure
;;               ^ - meta.sexpr.clojure
;; ^ keyword.operator.clojure
;;   ^ constant.numeric.float.clojure

  (defn square [x] (* x x))
;;<- - meta.sexpr.clojure - meta.function.clojure
;;^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.clojure
;; ^^^^ storage.type.function.type.clojure 
;;      ^^^^^ entity.name.function.clojure source.symbol.clojure
;;             ^^^ meta.function.body.clojure meta.function.parameters.vector.clojure
;;             ^ punctuation.definition.vector.begin.clojure
;;              ^ meta.function.parameters.vector.clojure variable.parameter.clojure source.symbol.clojure
;;               ^ punctuation.definition.vector.end.clojure
;;                 ^^^^^^^ meta.function.body.clojure meta.function.body.code.clojure meta.sexpr.clojure
;;                  ^ keyword.operator.clojure
;;                   ^ - keyword.operator.clojure - source.symbol.clojure
;;                    ^ source.symbol.clojure
;;                     ^ - source.symbol.clojure
;;                      ^ source.symbol.clojure
;;                        ^ - meta.sexpr.clojure

  (square 10) ;; test
;;^^^^^^^^^^^ meta.sexpr.clojure
;;           ^^^^^^^^ - meta.sexpr.clojure
;;            ^^ punctuation.definition.comment.clojure
;;            ^^^^^^^ comment.line.semicolon.double.clojure
;;^^^^^^^^^^^ - keyword.operator.clojure
;; ^^^^^^ source.symbol.clojure
;;       ^^^^^^^^^^^^ - source.symbol.clojure
;;        ^^ constant.numeric.float.clojure

  (def testfunc (fn [] "Hello world"))
;; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sexpr.clojure meta.function.def_form.clojure
;; ^^^ meta.sexpr.clojure meta.function.def_form.clojure storage.type.variable.clojure
;;     ^^^^^^^^ entity.name.function.clojure source.symbol.clojure
;;              ^^^^^^^^^^^^^^^^^^^^^ meta.function.lambda.clojure
;;               ^^ storage.type.function.type.clojure
;;                  ^^^^^^^^^^^^^^^^ meta.function.body.clojure
;;                  ^^ meta.function.parameters.vector.clojure punctuation.definition.vector
;;                     ^^^^^^^^^^^^^ meta.function.body.code.clojure string.quoted.double.clojure
;;                                  ^ - meta.function.body.code.clojure string.quoted.double.clojure
;;                     ^ punctuation.definition.string.begin.clojure
;;                                 ^ punctuation.definition.string.end.clojure

  (def hello1 (fn [] #"Hello world"))
;;                   ^^^^^^^^^^^^^^ string.regexp.clojure
;;                   ^^ punctuation.definition.string.begin.clojure
;;                                ^ punctuation.definition.string.end.clojure
;;                                 ^ - string.regexp.clojure
;;                     ^^^^^^^^^^^ meta.literal.regexp

  (def hello2 (fn [] #"Hello world\\"))
;;                   ^^^^^^^^^^^^^^^^ string.regexp.clojure
;;                   ^^ punctuation.definition.string.begin.clojure
;;                                  ^ punctuation.definition.string.end.clojure
;;                                   ^ - string.regexp.clojure
;;                     ^^^^^^^^^^^ meta.literal.regexp
;;                                ^^ constant.character.escape.regexp

  (def hello (fn [] #"{2}Hello*?* world\"{2} foobar*"))
;;                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.clojure
;;                  ^^ punctuation.definition.string.begin.clojure
;;                                     ^^ constant.character.escape.regexp - punctuation.definition.string.end.clojure
;;                                                  ^ punctuation.definition.string.end.clojure
;;                                                   ^ - string.regexp.clojure
;;                       ^^^^^ meta.literal.regexp
;;                                          ^^^^^^^ meta.literal.regexp
;;                    ^^^ invalid.illegal.unexpected-quantifier.regexp - meta.literal.regexp
;;                            ^^ keyword.operator.quantifier.regexp
;;                              ^ invalid.illegal.unexpected-quantifier.regexp
;;                                       ^^ keyword.operator.quantifier.regexp
;;                                                 ^ keyword.operator.quantifier.regexp

  (def hello (fn [] #"(?=unclosed_paren"))
;;                  ^^^^^^^^^^^^^^^^^^^^ string.regexp.clojure
;;                  ^^ punctuation.definition.string.begin.clojure
;;                                     ^ punctuation.definition.string.end.clojure
;;                                      ^ - string.regexp.clojure

(def ^:dynamic url "https://api.github.com/")
;;^^ storage.type.variable.clojure
;;   ^ constant.other.metadata.read.clojure
;;    ^ keyword.operator.symbol.clojure - source.symbol.clojure
;;    ^^^^^^^^ constant.string.symbol.clojure
;;            ^ - constant
;;             ^^^ source.symbol.clojure
;;                ^ - source.symbol.clojure
;;                 ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.clojure
(def ^:dynamic defaults {})
;;   ^ constant.other.metadata.read.clojure
;;    ^ keyword.operator.symbol.clojure - source.symbol.clojure
;;    ^^^^^^^^ constant.string.symbol.clojure
;;     ^^^^^^^ source.symbol.clojure
;;             ^^^^^^^^ support.function.match.clojure
;;                      ^^ constant.language.clojure

(defn query-map
;;^^^ storage.type.function.type.clojure
;;    ^^^^^^^^^ source.symbol.clojure
  "Turn keywords into strings, and replace hyphens with underscores."
;;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.docstring.clojure
  [entries]
;;^^^^^^^^^ meta.function.parameters.vector.clojure
;;^ punctuation.definition.vector.begin.clojure
;; ^^^^^^^ variable.parameter.clojure source.symbol.clojure
;;        ^ punctuation.definition.vector.end.clojure
  (into {}
;; ^^^^ keyword.other.clojure
;;      ^^ constant.language.clojure
        (for [[k v] entries]
;;       ^^^ keyword.control.clojure
;;            ^ punctuation.definition.vector.begin.clojure
;;             ^ variable.parameter.clojure source.symbol.clojure
;;              ^ - variable - source.symbol.clojure
;;               ^ variable.parameter.clojure source.symbol.clojure
;;                ^ punctuation.definition.vector.end.clojure
;;                  ^^^^^^^ source.symbol.clojure
          [(.replace (name k) "-" "_") v])))
;;           ^^^^^^^ support.function.clojure
;;                    ^^^^ support.function.clojure
;;                         ^ source.symbol.clojure
;;                            ^^^ string.quoted.double.clojure
;;                                ^^^ string.quoted.double.clojure
;;                                     ^ source.symbol.clojure
;;                                      ^ punctuation.definition.vector.end.clojure

(defn parse-json
  "Same as json/parse-string but handles nil gracefully."
  [s] (when s (json/parse-string s true)))
;;^^^ meta.function.clojure meta.function.body.clojure meta.function.parameters.vector.clojure
;;^ punctuation.definition.vector.begin.clojure
;; ^ variable.parameter.clojure source.symbol.clojure
;;  ^ punctuation.definition.vector.end.clojure
;;             ^^^^ source.symbol.clojure
;;                 ^ keyword.operator.qualified.clojure - source.symbol.clojure
;;                  ^^^^^^^^^^^^ source.symbol.clojure
;;                               ^ source.symbol.clojure
;;                                 ^^^^ constant.language.clojure

;; https://clojuredocs.org/clojure.core/defmethod
(defmulti greeting
;;^^^^^^^ storage.type.variable.clojure
;;        ^^^^^^^^ entity.name.function.clojure source.symbol.clojure
  (fn [x] (x "language")))
;;^^^^^^^^^^^^^^^^^^^^^^^ meta.function.lambda.clojure
;; ^^ storage.type.function.type.clojure
;;    ^^^ meta.function.parameters.vector.clojure
;;     ^ variable.parameter.clojure source.symbol.clojure
;;         ^ source.symbol.clojure
;;           ^^^^^^^^^^ string.quoted.double.clojure

(defmethod greeting "English" [_]
;;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.multi_method.clojure
;;^^^^^^^^ storage.type.function.type.clojure
;;         ^^^^^^^^ entity.name.function.clojure source.symbol.clojure
;;                  ^^^^^^^^^ string.quoted.double.clojure
;;                            ^^^ meta.function.parameters.vector.clojure
 "Hello!")
;;^^^^^^^ string.quoted.double.clojure
;;       ^ meta.function.multi_method.clojure
;;        ^ - meta.function.multi_method.clojure

(def english-map {"id" "1", "language" "English"})
;;^^ storage.type.variable.clojure
;;   ^^^^^^^^^^^ entity.name.function.clojure source.symbol.clojure
;;               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.expression.map.clojure
;;               ^ punctuation.definition.map.begin.clojure
;;                                              ^ punctuation.definition.map.end.clojure

(greeting english-map)
;;^^^^^^^ source.symbol.clojure
;;        ^^^^^^^^^^^ source.symbol.clojure

(defmulti service-charge (fn [acct] [(account-level acct) (:tag acct)]))
(defmethod service-charge [::acc/Basic   ::acc/Checking] [_] 25)
(defmethod service-charge [::acc/Basic   ::acc/Savings]  [_] 10)
(defmethod service-charge [::acc/Premium ::acc/Account]  [_]  0)
;;                         ^^ keyword.operator.symbol.clojure
;;                         ^^^^^^^^^^^^^ constant.string.symbol.clojure
;;                           ^^^ source.symbol.clojure
;;                              ^ keyword.operator.qualified.clojure
;;                               ^^^^^^^ source.symbol.clojure
;;                                       ^^ keyword.operator.symbol.clojure
;;                                       ^^^^^^^^^^^^^ constant.string.symbol.clojure
;;                                         ^^^ source.symbol.clojure
;;                                            ^ keyword.operator.qualified.clojure
;;                                             ^^^^^^^ source.symbol.clojure
;;                                                       ^^^ meta.function.parameters.vector.clojure
;;                                                        ^ variable.parameter.clojure source.symbol.clojure
;;                                                            ^ meta.function.body.code.clojure constant.numeric.float.clojure

;; <- - meta
