;; ---------------------------------------------------------------------
;; GENERAL
;; ---------------------------------------------------------------------
;; debug if problemes
;(setq-default debug-on-error t)

;;(defvar emacsrootpath "~/")
(defvar emacsrootpath "~/emacsconfig/")


;; blueor | whitest | whitest_2 | storm | matrix | desert | grayze 
;;(defvar themecolor "blueor")
;;(defvar themecolor "zenburn_w")
(setq molokai-theme-kit t)

(defvar themecolor "molokai")

;; hide that tucking foolbar
(tool-bar-mode -1)

(menu-bar-mode 0)
;; and the startup message too
(setq inhibit-startup-message t)
(setq visible-bell t)


;; (autoload 'tail-phperror-file
;;       "tail-file" "/tmp/php_arnaud.log" t)

(defun random-element (list)
  "Return some element of the list, chosen at random."
  (nth (random (length list)) list))

(defun testt()
  (interactive)


  (setf gg (random-element (ttt)))
  ;;(message (pop gg))
)
;;(pop x)



;; -------------------  yas -----------------------
(add-to-list 'load-path (concat emacsrootpath ".emacs.d/yasnippet/"))
(require 'yasnippet) ;; not yasnippet-bundle
(yas--initialize)


;; keys
;; ---------------------------------------------------------------------
(global-unset-key "\C-x\C-k") ;; kill that freaking edit-keyboard-macro
(global-unset-key "\C-z") ;; dont want to iconify-frame under X
(global-set-key '[C-tab] 'other-window)
(global-set-key "\C-x\C-g"  'goto-line)

(global-set-key '[C-i] 'indent-region)

(global-set-key "\C-\M-i" 'php_beautifier)

;;INDENT
;;(if (file-exists-p "~/.emacs.d/arnaud/.emacs-indent")
;;    (load-file "~/.emacs.d/arnaud/.emacs-indent"))
;;(if (file-exists-p (concat emacsrootpath ".emacs.d/arnaud/arnaud.el"))
;;    (load-file (concat emacsrootpath ".emacs.d/arnaud/arnaud.el")))
;;(if (file-exists-p (concat emacsrootpath ".emacs.d/php-mode.el"))
;;    (load-file (concat emacsrootpath ".emacs.d/php-mode.el")))
;;(if (file-exists-p (concat emacsrootpath ".emacs.d/php-mode-improved.el"))
;;    (load-file (concat emacsrootpath ".emacs.d/php-mode-improved.el")))
;;(if (file-exists-p (concat emacsrootpath ".emacs.d/php-completion.el"))
;;    (load-file (concat emacsrootpath ".emacs.d/php-completion.el")))

(if (file-exists-p (concat emacsrootpath ".emacs.d/findr.el"))
    (load-file (concat emacsrootpath ".emacs.d/findr.el")))

;;Autoloader !!
(add-to-list 'load-path (concat emacsrootpath ".emacs.d/"))
(add-to-list 'load-path (concat emacsrootpath ".emacs.d/arnaud/"))
(add-to-list 'load-path (concat emacsrootpath ".emacs.d/flymake"))
(add-to-list 'load-path (concat emacsrootpath ".emacs.d/flymake-phpcs"))
(add-to-list 'load-path (concat emacsrootpath "/colortheme/color-theme/"))
(add-to-list 'load-path (concat emacsrootpath ".emacs.d/python-mode.el/"))
;;Django
(add-to-list 'load-path (concat emacsrootpath ".emacs.d/django-mode-master"))

;;(require 'powerline)
;;;; colors...
;;(setq powerline-color1 "#222")      ;; dark grey; 
;;(setq powerline-color2 "#444")      ;; slightly lighter grey
;;;; shape...
;;(setq powerline-arrow-shape 'arrow14)

;;(add-to-list 'custom-theme-load-path (concat emacsrootpath "/colortheme/themes/"))

(require 'auto-complete-config)
(require 'php-mode)
(require 'web-mode)
(require 'smarty-mode)
(require 'python-mode)
(require 'flymake-php)
(require 'flymake-phpcs) ;;code sniffer
(require 'arnaud)
(require 'my-color-themes)
(require 'load-theme-buffer-local)
(require 'color-theme-buffer-local)
(require 'markdown-mode)
;;django
(require 'django-html-mode)
(require 'django-mode)
(yas/load-directory (concat emacsrootpath ".emacs.d/django-mode-master/snippets"))
;;(add-to-list 'auto-mode-alist '("\\.djhtml$" . django-html-mode))


;; //////


(add-to-list 'ac-dictionary-directories (concat emacsrootpath ".emacs.d//ac-dict"))
(ac-config-default)

;;cedet
(add-to-list 'load-path (concat emacsrootpath ".emacs.d/cedet-1.0/eieio"))
;;(load-file "~/.emacs.d/cedet-1.0/common/cedet.el")
(add-to-list 'load-path (concat emacsrootpath ".emacs.d/geben-0.26"))
(require 'geben)


;;(set-face-font 'ac-candidate-face "Arial 10")
;;(set-face-font 'ac-selection-face "Arial 10")
(setq popup-use-optimized-column-computation nil)


(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)

;;git blame
(autoload 'mo-git-blame-file "mo-git-blame" nil t)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)

(add-hook 'find-file-hook 'arnaud-hook-find-file)


;; scroll on  mouse wheel
;; ---------------------------------------------------------------------
(defun up-slightly () (interactive) (scroll-up 5))
(defun down-slightly () (interactive) (scroll-down 5))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)

(defun up-one () (interactive) (scroll-up 1))
(defun down-one () (interactive) (scroll-down 1))
(global-set-key [S-mouse-4] 'down-one)
(global-set-key [S-mouse-5] 'up-one)

(defun up-a-lot () (interactive) (scroll-up))
(defun down-a-lot () (interactive) (scroll-down))
(global-set-key [C-mouse-4] 'down-a-lot)
(global-set-key [C-mouse-5] 'up-a-lot)

;; Tabs & spaces
;; ---------------------------------------------------------------------
;; Set tabs to 4 spaces and replace all tabs with spaces
(setq default-tab-width 4)
(setq default-tab-width 8) ;; XXX pour conneries de notre ami MrLex
(setq-default indent-tabs-mode nil)

;; Default browser
;; ---------------------------------------------------------------------
;(setq browse-url-generic-program "mozilla"
;      browse-url-browser-function 'browse-url-generic)
(setq browse-url-generic-program "firefox"
      browse-url-browser-function 'browse-url-generic)

;; modeline
;; ---------------------------------------------------------------------
(column-number-mode t)


;;ido
    (require 'ido)
    (ido-mode t)
    (setq ido-enable-flex-matching t) ;; enable fuzzy matching




;; ---------------------------------------------------------------------
;; TRAMP : Remote files access
;; ---------------------------------------------------------------------
;(require 'tramp)

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; css mode
;; ---------------------------------------------------------------------
(autoload 'css-mode "css-mode" "CSS editing mode" t)
(setq auto-mode-alist       
    (cons '("\\.css\\'" . css-mode) auto-mode-alist))


;; javascript mode
;; ---------------------------------------------------------------------
;(autoload 'javascript-mode "javascript-mode" "Javascript editing mode" t)
;(setq auto-mode-alist       
;    (cons '("\\.js\\'" . javascript-mode) auto-mode-alist))



;; ---------------------------------------------------------------------
;; CUSTOMIZE - DONT EDIT PAST THIS POINT
;; ---------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-compression-mode t nil (jka-compr))
 '(auto-save-default nil)
 '(c-basic-offset 2)
 '(c-offsets-alist (quote ((arglist-intro . +) (arglist-cont c-lineup-gcc-asm-reg 0) (arglist-close . +))))
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "utf-8")
 '(default-input-method "utf-8")
 '(fill-column 80)
 '(font-lock-verbose nil)
 '(frame-background-mode (quote light))
 '(global-font-lock-mode t nil (font-lock))
 '(hippie-expand-verbose t)
 '(mouse-wheel-follow-mouse t)
 '(mouse-wheel-mode t nil (mwheel))
 '(nxhtml-auto-mode-alist (quote (("\\.x?html?\\'" . nxhtml-mumamo) ("\\.x?htmlf?\\'" . nxhtml-mumamo) ("\\.phtml\\'" . nxhtml-mumamo) ("\\.jsp\\'" . jsp-nxhtml-mumamo) ("\\.asp\\'" . asp-nxhtml-mumamo) ("\\.djhtml\\'" . django-nxhtml-mumamo) ("\\.rhtml\\'" . eruby-nxhtml-mumamo) ("\\.epl\\'" . embperl-nxhtml-mumamo) (".lzx\\'" . laszlo-nxml-mumamo))))
 '(nxhtml-default-encoding (quote utf-8))
 '(nxhtml-minor-mode-modes (quote (nxhtml-mode nxml-mode html-mode sgml-mode xml-mode image-mode dired-mode)))
 '(nxhtml-skip-welcome t)
 '(nxml-syntax-highlight-flag t)
 '(password-cache-expiry 3600)
 '(pc-select-meta-moves-sexps t)
 '(pc-select-selection-keys-only t)
 '(pc-selection-mode t)
 '(php-file-patterns (quote ("\\.php[s34]?\\'" "\\.phtml\\'" "\\.inc\\'" "\\.module\\'" "\\.install\\'")))
 '(php-manual-url "http://www.php.net/manual/fr/")
 '(php-mode-force-pear nil)
 '(php-search-url "http://www.php.net/manual/fr/")
 '(py-align-multiline-strings-p t)
 '(py-imenu-show-method-args-p t)
 '(save-place nil nil (saveplace))
 '(scroll-bar-mode (quote right))
 '(send-mail-function (quote mailclient-send-it))
 '(show-paren-mode t nil (paren))
 '(speedbar-frame-parameters (quote ((minibuffer) (width . 20) (border-width . 0) (menu-bar-lines . 0) (tool-bar-lines . 0) (unsplittable . t) (set-background-color "black"))))
 '(speedbar-show-unknown-files t)
 '(speedbar-use-images nil)
 '(text-mode-hook (quote (text-mode-hook-identify)))
 '(tramp-auto-save-directory "~/.emacs-backups")
 '(tramp-verbose 5)
 '(transient-mark-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(widget-mouse-face (quote variable-pitch)))





(set-default-font "-unknown-Liberation Serif-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1" )


;;(set-default-font "-b&h-lucida-bold-r-normal-sans-12-120-75-75-p-79-iso8859-1" )


;;(set-default-font "-apple-monaco-medium-r-normal--12-120-72-72-m-120-iso10646-1")


;; activer la possibilité de réduire des fonctions sur leur titre
(global-set-key [\C-f3] 'hs-minor-mode)





;;INCLUDES


(defun update-diff-colors ()
  "update the colors for diff faces"
  (set-face-attribute 'diff-added nil
                      :foreground "green4")
  (set-face-attribute 'diff-removed nil
                      :foreground "blue")
  (set-face-attribute 'diff-changed nil
                      :foreground "purple"))
  ;;(set-face-attribute 'diff-added nil
  ;;                    :foreground "white" :background "green4")
  ;;(set-face-attribute 'diff-removed nil
  ;;                    :foreground "white" :background "red3")
  ;;(set-face-attribute 'diff-changed nil
  ;;                    :foreground "white" :background "purple"))
(eval-after-load "diff-mode"
  '(update-diff-colors))


;; (add-hook 'ediff-load-hook
;;           (lambda ()
;;             (setq-default ediff-highlight-all-diffs 'nil)
;;             (set-face-foreground
;;              ediff-current-diff-face-B "white")
;;             (set-face-background
;;              ediff-current-diff-face-B "red")
;;             (make-face-italic
;;              ediff-current-diff-face-B)))




;; COLORS
;;(if (file-exists-p "~/.emacs-colors")
;;    (load-file "~/.emacs-colors"))

;;    (load-file "~/.emacs.d/color-theme.el"))
;;    (load-file "~/themes/emacs/charcoal"))


		;;(load-file "~/themes/emacs/midnightdark")
;;Themes names:
;; blueor | whitest | whitest_2 | storm | matrix | desert | grayze 
(load-file (concat emacsrootpath (concat "colortheme/terminal/" themecolor)))

;;KEYS
;;(if (file-exists-p "~/.emacs-keys")
;;    (load-file "~/.emacs-keys"))

;;RELOAD BUFFER FILE WITH F5
(defun refresh-file ()
  (interactive)
  (revert-buffer t t t)
  )
(global-set-key [f5] 'refresh-file)



;;Fullscreen par default
(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
)
;;(toggle-fullscreen)





;;; ansi-color
;(require 'ansi-color)
;(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
                                        ;(ansi-color-for-comint-mode-on)
;(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)



;; Laisser le curseur en place lors d'un défilement par pages. Par
;; défaut, Emacs place le curseur en début ou fin d'écran selon le
;; sens du défilement.
(setq scroll-preserve-screen-position t)

;;(setq ansi-term-color-vector [unspecified “yellow” “red3” “green” “yellow” “default” “magenta” “cyan3” “white”])



(global-set-key (kbd "<f2>") 'rename-buffer)

;(defun visit-ansi-term ()
;  "If we are in an *ansi-term*, rename it.
;If there is no *ansi-term*, run it.
;If there is one running, switch to that buffer."
;  (interactive)
;  (if (equal "*ansi-term*" (buffer-name))
;      (call-interactively 'rename-buffer)
;      (if (get-buffer "*ansi-term*")
;;   (switch-to-buffer "*ansi-term*")
;;   (ansi-term "/bin/bash"))))
;(global-set-key (kbd "<f2>") 'visit-ansi-term)

(global-set-key [f12] 'arnaud-switch-buffer-theme)


;; F11        <=> Masquer le bloc de code courant
;; F12        <=> Montrer le bloc de code courant
;; Meta + F11 <=> Masquer tous les blocs de code
;; Meta + F12 <=> Montrer tous les blocs de code
;;(global-set-key [f11] 'hs-hide-block)
;;(global-set-key [f12] 'hs-show-block)
;;(global-set-key [(meta f11)] 'hs-hide-all)
;; FIXME: Pourquoi cette association ne fonctionne-t'elle pas alors
;; qu'invoquée explicitement, la commande « hs-show-all » fonctionne
;; parfaitement.
;;(global-set-key [(meta f12)] 'hs-show-all)



;; ===================================================================
;; =====   Mode d'édition préféré par type de fichier            =====
;; ===================================================================

; Sélection du mode d'édition en fonction du motif satisfait par le
; nom du fichier.
(setq auto-mode-alist
  (append
    '(("\\.sh\\'" . sh-mode)
      ("bash" . sh-mode)
      ("profile" . sh-mode)
      ("Makefile\\'" . makefile-mode)
      ("makefile\\'" . makefile-mode)
      ("\\.mk\\'" . makefile-mode)
      ("\\.c\\'"  . c-mode)
      ("\\.h\\'"  . c-mode)
      ("\\.cc\\'" . c++-mode)
      ("\\.hh\\'" . c++-mode)
      ("\\.cpp\\'"  . c++-mode)
      ("\\.hpp\\'"  . c++-mode)
      ("\\.pgc\\'"  . c++-mode) ; Fichiers « Embedded PostgreSQL in C »
      ("\\.p[lm]\\'" . cperl-mode)
      ("\\.el\\'" . emacs-lisp-mode)
      ("\\.emacs\\'" . emacs-lisp-mode)
      ("\\.l\\'" . lisp-mode)
      ("\\.lisp\\'" . lisp-mode)
      ("\\.txt\\'" . text-mode)
      ("\\.sgml\\'" . nxml-mode)
      ("\\.xml\\'" . nxml-mode)
      ("\\.xsl\\'" . nxml-mode)
      ("\\.svg\\'" . nxml-mode)
      ("\\.[sx]?html?\\'" . nxml-mode)
      ("\\.tpl\\'" . nxml-mode)
      ("\\.php\\'" . php-mode)
      ("\\.module\\'" . php-mode)
      ("\\.inc\\'" . php-mode)
      ("\\.awk\\'" . awk-mode)
      ("\\.tex\\'" . latex-mode)
      ("\\.py\\'" . python-mode)

     )
     auto-mode-alist
  )
)

;;  (add-to-list 'auto-mode-alist '("\\.info" . conf-windows-mode))

;;Highlight indentation
(require 'highlight-indentation)
(set-face-background 'highlight-indentation-face "#333333")
(set-face-background 'highlight-indentation-current-column-face "#444444")

(add-hook 'find-file-hook 'highlight-indentation-mode)

;;(highlight-indentation-current-column-mode t)
;;(add-hook 'php-mode-hook 'highlight-indentation-mode)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(vertical-border ((nil (:foreground "yellow")))))
