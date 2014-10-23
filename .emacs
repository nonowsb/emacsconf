;; ---------------------------------------------------------------------
;; GENERAL
;; ---------------------------------------------------------------------
;; debug if problemes
(setq-default debug-on-error t)

(defvar emacsrootpath "~/emacsconfig-dev/")

(setq themes '(molokai ))
;; blueor | whitest | whitest_2 | storm | matrix | desert | grayze 
;;(defvar themecolor "blueor")
;;(defvar themecolor "zenburn_w")
(add-to-list 'custom-theme-load-path (concat emacsrootpath (concat "themes/" "molokai")))

(setq molokai-theme-kit t)
(load-theme 'molokai t)

