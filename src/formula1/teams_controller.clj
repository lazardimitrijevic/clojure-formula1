(ns formula1.teams-controller
  (:require [clostache.parser :as clostache]
            [formula1.drivers :as drivers]
            [formula1.teams :as teams]
            [formula1.countries :as countries]))

(defn read-template [template-name]
  (slurp (clojure.java.io/resource
           (str "views/teams/" template-name ".mustache"))))

(defn render-template [template-file params]
  (clostache/render (read-template template-file) params))

