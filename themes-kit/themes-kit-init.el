(tool-bar-mode -1)
(menu-bar-mode 0)


(defcustom theme-kit "dfdf"
  "Define theme-kit value to load theme kit"
  :type 'string
  :group 'theme-kit)

(defcustom theme-kit-file 
  (concat emacsrootpath (concat "themes-kit/" (concat theme-kit "-theme-kit.el")))
  "Define theme-kit value to load theme kit"
  :type 'string
  :group 'theme-kit)


(if (and theme-kit
         (file-exists-p theme-kit-file))
    (load-file theme-kit-file))

;;;###autoload
;; (and load-file-name
;;      (boundp 'custom-theme-load-path)
;;      (add-to-list 'custom-theme-load-path
;;                   (file-name-as-directory
;;                    (file-name-directory load-file-name))))



(provide 'themes-kit-init)
