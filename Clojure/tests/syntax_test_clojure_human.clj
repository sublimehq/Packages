; SYNTAX TEST "Packages/Clojure/Clojure.sublime-syntax"



; Comments and whitespace
  ;blah
  ; blah
  ;;; blah
  blah;blah;blah
  blah ; blah ; blah
  blah,blah,blah
  blah, blah, blah



; Constants
  true false nil
; Breaks
  true,false,nil
  true;false;nil
; Unaffected
  'nil (true) (nil)
; No highlighting
  nill nil- -nil nil?



; Numbers
  1234 1234N +1234 +1234N -1234 -1234N
  0x1234af 0x1234afN 0X1234AF 0X1234AFN
  +0x1234af +0x1234afN +0X1234AF +0X1234AFN
  -0x1234af -0x1234afN -0X1234AF -0X1234AFN
  2r1010 16r1234af 32r1234az 2R1010 16R1234AF 32R1234AZ
  +2r1010 +16r1234af +32r1234az +2R1010 +16R1234AF +32R1234AZ
  -2r1010 -16r1234af -32r1234az -2R1010 -16R1234AF -32R1234AZ
  0/10 10/20 30/0
  +0/10 +10/20 +30/0
  -0/10 -10/20 -30/0
  1234M 1234.0M 1234.1234M
  +1234M +1234.0M +1234.1234M
  -1234M -1234.0M -1234.1234M
  1234e10 1234E10M 1234.1234e10M 1234.1234E10M
  +1234e10 +1234E10M +1234.1234e10M +1234.1234E10M
  -1234e10 -1234E10M -1234.1234e10M -1234.1234E10M
  1234.1234e+10 1234.1234E+10 1234.1234e-10 1234.1234E-10
  +1234.1234e+10M +1234.1234E+10M +1234.1234e-10M +1234.1234E-10M
  -1234.1234e+10M -1234.1234E+10M -1234.1234e-10M -1234.1234E-10M
; Breaks
  10,20,30
  10;20;30
  10'20'30
  10`20`30
  10#20#30
; Unaffected
  '1234 '+1234 '-1234
  (10 20 30) [10 20 30]
; Invalid numbers
  01234 +01234 -01234 '01234
  01234N +01234N -01234N '01234N
  10-20 10+20 1234n 1234m 1234. 1234.M
  10.0/20 10/20.0 10/+20 10/-20
  10:20:30
  1r000
; Ignore
  ; valid symbols
  .1234 .1234M



; Symbols
  ! $ % & * - _ = + | < > . / ?
  ++ --
  blah
  blah/blah
  blah.blah
  blah.blah/blah
  blah.blah/blah.blah
  blah/blah/blah
  blah1000
  blah1000.blah1000
  *blah*
  blah'blah'
  blah'''blah'''
  blah:blah:blah
  blah#blah#
  blah///blah
; Breaks
  blah,blah,blah
  blah;blah;blah
  blah`blah
  blah~blah
  blah@blah
  blah^blah
  blah\blah
; Unaffected
  'blah 'blah:blah
  [blah blah blah]
; Invalid
  //
  blah:
  blah::blah
  /blah
  blah/



; Keywords
  :! :$ :% :& :* :- :_ := :+ :| :< :> :. :/ :?
  :++ :--
  :blah
  :blah/blah
  :blah.blah
  :blah.blah/blah
  :blah.blah/blah.blah
  :blah/blah/blah
  :blah1000
  :blah1000.blah1000
  :*blah*
  :blah'blah'
  :blah'''blah'''
  :blah:blah:blah
  :blah#blah#
  ::blah///blah
  ://blah
  :///
  :/blah/blah
  :blah//
; These are valid, unlike symbols
  :' :# :### :10 :10.20
; Breaks
  :,blah
  :;blah
  :blah,:blah,:blah
  :blah;:blah;:blah
  :blah`blah
  :blah~blah
  :blah@blah
  :blah^blah
  :blah\blah
; These are invalid, but I couldn't get the regex right
  :
  ://
  :10/20
  :blah10/20
  :blah:
  ::blah:
  ::blah::blah
  :::blah
  :/blah
  ::blah/



; Chars
  \0 \; \,
  \newline
  blah \c blah \c
; Invalid but highlight anyway
  \blah100
; Capture exactly one char
  \;;;;
  \,,
  \``blah
  \''blah
  \~~blah
  \@@blah
  \~@~@blah
  \##{}
  \^^blah
; Breaks
  \a,\b,\c
  \a;\b;\c
; Unaffected
  \c (\c) ( \c ) [\c] [ \c ]



; Strings
  "blah"
  "blah \" blah"
  "
  blah () [] {} ::blah
  "
  "
  (unclosed paren ->
  "
; Breaks
  "blah","blah","blah"
  "blah";"blah";"blah"
; Unaffected
  '"blah" ("blah") ["blah"]



; Regex
  #""
  #" blah "
  #"blah{1}"
  #"
  blah{1}
  "
  #"
  \"
  (unclosed paren ->
  "
; Invalid
  # ""



; Dispatch
  #inst"0000"
  #blah blah
  #blah1000.blah1000/blah1000 blah
  #blah:blah blah
  # inst "0000"
  #
    inst
    "0000"
  #'blah
  #(list % %1)
  #[]
  #_[]
  #?[]
; Breaks
  #blah\newline
  #blah`blah
; Unaffected
  '#'blah (#'blah blah)
  '#inst"0000" (#inst"0000" blah)
; Invalid
  #111[]
  (blah #) )
; Ignore
  #{}



; Quoting and unquoting
  ; Quote
  '100
  'true
  ':blah
  'blah
  ' blah
  '
    blah
  'blah:blah
  'blah.blah/blah1000
  '()
  '(10 20 30)
  '(blah blah)
  '(quote blah)
  ; Backquote
  `blah
  ; Unquote
  ~blah
  ~100
  `(blah ~blah)
  `(blah ~100)
  ; Unquote-splicing
  ~@blah
  ~@[10 20 30]
  `(blah ~@blah)
  `(blah ~@[10 20 30])
; Invalid
  ( ') )
  ( `) )
  ( `) )
  ( ~@) )



; Deref
  @100
  @true
  @blah
  @:blah
  @(atom blah)
  @@@blah
  @'blah
  @~blah
  @#blah[]
; Breaks
  blah@blah
  100@blah
; Invalid
  (blah @) )



; Metadata
  ^File
  ^File blah
  ^:private blah
  ^{:private true} blah
  ; Consequent metadata is merged
  ^:private ^:dynamic blah
  ; Useless but accepted by Clojure reader
  ^^^{10 20}{30 40}{:tag File} blah
; Breaks
  blah^blah
  100^blah
; Invalid
  ( ^) )



; Brackets
  []
  [10, 20, 30]
  [10
   ; ---
   blah
   #inst"0000"
   [20]]
; Invalid
  [ ] ]



; Braces
  #{}
  #{10, 20, 30}
  #{10
    ; ---
    blah
    #inst"0000"
    {20}}
  {10 20, 30 40}
  {:blah [10 20 30]
   ; ---
   :blahblah #{10 20 30}}
; Invalid
  #{ } }
  { } }



; Parens
  ()
; Highlight operator
  (blah blah true 10 "" [10 20])
  #(blah blah true 10 "" [10 20])
; Ignore operator
  (true blah :blah)
  (10 blah :blah)
  (:blah blah 10)
  #(true blah 10)
; Whitespace
  (
    blah
    ; ---
    blah
    :blah
   )
; Invalid
  ( ) )




; fn

  (fn [])
  (fn color-but-dont-declare [] blah)
  (fn color-but-dont-declare
    ([] blah)
    ([_] blah))



; Defs


;; Declare

  (def declare-def)

  (def declare-def dont-declare)

  ; declare "λ"
  (def λ nil)

  ; declare "👽"
  (def 👽 nil)

  ; declare "def"
  (def def)

  (
   ; ---
   def
   ; ---
   declare-def
   dont-declare
   )

  (defonce declare-defonce)

  (defonce ^:private declare-defonce nil)


;; Declare with metadata

  (def ^File declare-def)

  (def ^:private declare-def)

  (def ^:private declare-def dont-declare)

  ; Metadata is merged
  (def ^:private ^:dynamic declare-def)
  (def ^:private ^:dynamic declare-def dont-declare)

  (
   def
   ; ---
   ^
   ; ---
   {:private
   ; ---
    true}
   ; ---
   declare-def
   ; ---
   dont-declare
   )

  ; Useless but accepted by Clojure reader
  (^{10 20} def ^:private declare-def dont-declare)

  ; Useless but accepted by Clojure reader
  (def ^^^{10 20}{30 40}{:private true} declare-def dont-declare)


;; Don't declare

  (declare dont-declare)

  (def nil dont-declare)

  (def 10 dont-declare)

  (def :blah dont-declare)

  (def 'blah dont-declare)

  (def () dont-declare)

  (-def dont-declare)

  (-def def dont-declare)


;; Invalid

  (def ^ ) )




;; Function defs

  (defn declare-defn [] dont-declare)

  (defn declare-defn [arg & args] dont-declare)

  (defn ^:private declare-defn [arg & args] dont-declare)

  (defn declare-defn
    "docstring"
    [arg & args]
    dont-declare)

  (defn
    ^:private
    declare-defn
    "docstring"
    ([] dont-declare)
    ([_] dont-declare))

  (
   defn
   declare-defn
   "docstring"
   {:private true}
   ([] dont-declare)
   ([_] dont-declare))

  (defn declare-defn [value] {:pre [(int? value)]}
    value)


  ; Invalid but take care anyway
  (defn declare-defn dont-declare [] dont-declare)

  (defmacro declare-defmacro [])


;; defmulti / defmethod

  (defmulti declare-multi-fn)

  (defmulti ^:private declare-multi-fn dont-declare-dispatch-fn)

  (
   defmulti
   ^:private
   declare-multi-fn
   dont-declare-dispatch-fn
  )

  ; Invalid but take care anyway
  (defmulti declare-multi-fn nil)

  (defmethod dont-declare-multi-fn :dispatch-value [arg] ...)

  (defmethod dont-declare-multi-fn DispatchType [arg] ...)

  (
   defmethod
   dont-declare-multi-fn
  )


;; defprotocol

  (defprotocol DeclareProtocol)

  (defprotocol ^:private DeclareProtocol)

  (defprotocol ^:private ^:blah DeclareProtocol)

  (
   ; ---
   defprotocol
   ; ---
   ^:private
   ; ---
   DeclareProtocol
   ; ---
   "docstring")

  ; Invalid but take care anyway
  (defprotocol DeclareProtocol dont-declare)

  ; Protocol methods are added to the namespace as functions
  (defprotocol ^:private DeclareProtocol
    ; ---
    (declare-protocol-method [_])
    ; ---
    (^File declare-protocol-method [_]))

  ; Invalid but take care anyway
  (defprotocol DeclareProtocol
    (declare-protocol-method dont-declare [_])
    (100 dont-declare [_])
    (true dont-declare [_])
    (:blah dont-declare [_])
    ('blah dont-declare [_]))


;; definterface

  (definterface DeclareInterface)

  (definterface ^:private DeclareInterface)

  (
   definterface
   ^:private
   DeclareInterface
   "docstring"
  )

  ; Interface methods should have the same visual style as other function
  ; and method declarations, but shouldn't be added to the symbol index,
  ; since they're not added to the namespace as functions
  (definterface DeclareInterface
    (color-but-dont-declare [_])
    (color-but-dont-declare [_]))


;; deftype

  (deftype DeclareType)

  (deftype-custom DeclareWithCustomDeftype)

  (deftype ^:private DeclareType [])

  (
   ; ---
   deftype
   ; ---
   ^:private
   ; ---
   ^:blah
   ; ---
   DeclareType
   ; ---
   "docstring"
   [])

  ; Invalid but take care anyway
  (deftype DeclareType dont-declare)

  ; Similarly to definterface, type methods should have the standard visual
  ; style of function declarations, but not added to the symbol index,
  ; since they're not added to the namespace.
  (deftype DeclareType
    (color-but-dont-declare [_])
    (color-but-dont-declare [_]))


(deftype GrowingMap [^IFn make ^:unsynchronized-mutable inner]
  ILookup
  (valAt [this key]
    (let [dict @this]
      (if (contains? dict key)
        (get dict key)
        (locking this
          (if (contains? inner key)
            (get inner key)
            (get (set! inner (assoc inner key (make inner key))) key))))))
  (valAt [this key fallback] (get @this key fallback))

  Seqable
  (seq [this] (seq @this))

  IFn
  (invoke [this a] (.valAt this a))
  (invoke [this a b] (.valAt this a b))
  (applyTo [this args]
    (case (count args)
      1 (.invoke this (first args))
      2 (.invoke this (first args) (second args))
      (throw (new ArityException (count args) (.getName ^Class (type this))))))

  IDeref
  (deref [this]
    (or inner
        (locking this
          (or inner
              (let [dict (make)]
                (when-not (map? dict)
                  (throw (new Exception "GrowingMap initer failed to produce a map")))
                (set! inner dict)))))))

(defn new-growing-map
  ([make] (new-growing-map make nil))
  ([make init] {:pre [(ifn? make) (or (nil? init) (map? init))]}
   (new GrowingMap make init)))


;; defrecord

  (defrecord DeclareRecord)

  (defrecord-custom DeclareWithCustomDefrecord)

  (defrecord ^:private DeclareRecord [])

  (
   ; ---
   defrecord
   ; ---
   ^:private
   ; ---
   ^:blah
   ; ---
   DeclareRecord
   ; ---
   "docstring"
   [])

  ; Invalid but take care anyway
  (defrecord DeclareRecord dont-declare)

  (defrecord DeclareRecord
    (color-but-dont-declare [_])
    (color-but-dont-declare [_]))


(defrecord Srv [^Server jetty session-store state-store]
  component/Lifecycle

  (start [this]
    (let [port    (Long/parseLong (getenv "LOCAL_PORT"))
          this    (component/stop this)
          handler (new-handler this)
          options {:port port
                   :join? false
                   :send-server-version? false}
          jetty   (run-jetty handler options)]
      (assoc this :jetty jetty)))

  (stop [this]
    (when jetty (.stop jetty))
    (assoc this :jetty nil)))

(defn new-srv [prev-sys]
  (when-let [^Server jetty (-> prev-sys :srv :jetty)] (.stop jetty))
  (new Srv
       nil
       (or (-> prev-sys :srv :session-store)
           (util/expiring-session-store 72 {:time-unit :hours
                                            :expiration-policy :access}))
       (or (-> prev-sys :srv :state-store)
           (em/expiring-map 1 {:time-unit :hours :expiration-policy :access}))))


;; reify

  (reify
    clojure.lang.IDeref
    (deref [_] nil)
    clojure.lang.Seqable
    (seq [_] nil))


;; proxy

  (proxy [clojure.lang.IDeref clojure.lang.Seqable] []
    (deref [] nil)
    (seq [] nil))
