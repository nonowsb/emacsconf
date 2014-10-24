;; ---------------------------------------------------------------------
;; GENERAL
;; ---------------------------------------------------------------------
;; debug if problemes
(setq-default debug-on-error t)

(defvar emacsrootpath "~/emacsconfig-dev/")

;;Define theme / u can edit this
(setq theme 'molokai)
(setq molokai-theme-kit t)

;; @TODO: include themes : blueor | whitest | whitest_2 | storm | matrix | desert | grayze 

;;load theme
(add-to-list 'custom-theme-load-path (concat emacsrootpath (concat "themes/" (format "%s" theme))))
(load-theme theme t)


