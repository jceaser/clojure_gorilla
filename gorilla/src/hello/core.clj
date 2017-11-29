(ns hello.core)
(defn -main
    "I don't do a whole lot."
    [x]
    (println x "Hello, World!"))

(defn -test "Just a test" [] (println "hi there"))
(defn foo "Another test" [] (println "well hello there"))

(defn dog "dog function" [x] (println x "is a type of dog"))
(defn cat "cat function" [x] (println x "is a type of cat"))

(defn -dogs "dogs function" [x] (str x "is a type of dog."))
(defn -cats "cats function" [x] (str x "is a type of cat."))

(use '[clojure.java.shell :only [sh]])

(defn s "execute a shell command"
	[cmd args]
	(println (:out (sh cmd args)))
)

(defn -s "execute a shell command"
	[cmd]
	(println (:out (sh "sh" "-c" cmd)))
)

(defn -s "execute a shell command"
	[cmd]
	(println (:out (sh "sh" "-c" cmd)))
)

(str "ready")