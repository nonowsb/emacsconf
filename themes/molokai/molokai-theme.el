;; ---------------------------------------------------------------------
;; EMACS COLORS & FONTS
;; ---------------------------------------------------------------------
;; debug if problemes
;(setq-default debug-on-error t)

;; hide that tucking foolbar


;; colors
;; ---------------------------------------------------------------------

(set-foreground-color "white")
(scroll-bar-mode 0 )

;; un peu de couleur :)
(cond (window-system   ; ça marche aussi en mode texte, mais bof.
  (progn
    ;(set-face-background 'menu         "#b4b6bd") ;
    ;(set-face-background 'scroll-bar   "#d5d2bd")
    ;(set-face-background 'tool-bar     "#d5d2bd")
    (set-face-background 'fringe       "#262626")
    (set-face-foreground 'fringe       "#666666")
    
    ;(set-face-foreground 'mode-line	"#FF0000")    
)))

(custom-set-faces
  '(default ((t (:slant normal :weight normal :height 105 :width normal))))
  '(vertical-border ((nil (:foreground "yellow"))))
)


;;*---------------------------------------------------------------------------------------

(deftheme molokai "The molokai color theme for Emacs 24")

(let ((class '((class color) (min-colors 89)))
      ;; molokai palette
      (molokai-white          "#ffffff")
      (molokai-fg             "#f8f8f0")
      (molokai-red            "#ff0000")
      (molokai-pink           "#f92672")
      (molokai-orange+5       "#ef5939")
      (molokai-orange         "#fd971f")
      (molokai-yellow         "#ffff00")
      (molokai-darkgoldenrod  "#e6db74")
      ;(molokai-darkgoldenrod  "#CCCC00")
      (molokai-wheat          "#c4be89")
      (molokai-olive          "#808000")
      (molokai-chartreuse     "#a6e22e")
      (molokai-lime           "#00ff00")
      (molokai-green          "#008000")
      (molokai-darkwine       "#1e0010")
      (molokai-maroon         "#800000")
      (molokai-wine           "#960050")
      (molokai-teal           "#008080")
      (molokai-aqua           "#00ffff")
      (molokai-blue           "#66d9ef")
      (molokai-slateblue      "#7070f0")
      (molokai-purple         "#ae81ff")
      (molokai-palevioletred  "#d33682")
      (molokai-grey-2         "#bcbcbc")
      (molokai-grey-1         "#8f8f8f")
      (molokai-grey           "#808080")
      (molokai-grey+2         "#403d3d")
      (molokai-grey+3         "#4c4745")
      (molokai-grey+5         "#232526")
      (molokai-bg             "#1b1d1e")
      (molokai-grey+10        "#080808")
      (molokai-dark           "#000000")
      (molokai-base01         "#465457")
      (molokai-base02         "#090909")
      (molokai-base03         "#353535")
      (molokai-dodgerblue     "#13354a"))
  (custom-theme-set-faces
   'molokai

   ;; base
   `(default ((t (:background ,molokai-bg :foreground ,molokai-fg))))
   `(cursor ((t (:background ,molokai-fg :foreground ,molokai-bg))))
   `(fringe ((t (:foreground ,molokai-base02 :background ,molokai-bg))))
   `(highlight ((t (:background ,molokai-grey))))
   `(region ((t (:background  ,molokai-grey+2))
             (t :inverse-video t)))
   `(warning ((t (:foreground ,molokai-palevioletred :weight bold))))

   '(minibuffer-prompt ((t (:foreground "yellow"))))

   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,molokai-chartreuse))))
   `(font-lock-comment-face ((t (:foreground ,molokai-base01))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,molokai-base01))))
   `(font-lock-constant-face ((t (:foreground ,molokai-purple))))
   `(font-lock-doc-string-face ((t (:foreground ,molokai-darkgoldenrod))))
   `(font-lock-function-name-face ((t (:foreground ,molokai-chartreuse))))
   `(font-lock-keyword-face ((t (:foreground ,molokai-pink :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,molokai-wine))))
   `(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
   `(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
   `(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
   `(font-lock-string-face ((t (:foreground ,molokai-darkgoldenrod))))
   `(font-lock-type-face ((t (:foreground ,molokai-blue :weight bold))))
   `(font-lock-variable-name-face ((t (:foreground ,molokai-orange))))
   `(font-lock-warning-face ((t (:foreground ,molokai-palevioletred :weight bold))))

   ;; mode line
   `(mode-line ((t (:foreground ,molokai-fg
                                :background ,molokai-base03
                                :box nil))))
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mode-line-inactive ((t (:foreground ,molokai-fg
                                         :background ,molokai-base02
                                         :box nil))))

   ;; search
   `(isearch ((t (:foreground ,molokai-dark :background ,molokai-wheat :weight bold))))
   `(isearch-fail ((t (:foreground ,molokai-wine :background ,molokai-darkwine))))

   ;; linum-mode
   `(linum ((t (:foreground ,molokai-grey-2 :background ,molokai-grey+5))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,molokai-grey+5)) (t :weight bold)))
   `(hl-line ((,class (:background ,molokai-grey+5)) (t :weight bold)))



   `(ediff-current-diff-A ((((class color) (min-colors 16)) (:background "#F87D00" :foreground "black"))))
   `(ediff-current-diff-Ancestor ((((class color) (min-colors 16)) (:background "#4D0600" :foreground "white"))))
   `(ediff-current-diff-B ((((class color) (min-colors 16)) (:background "#73E415" :foreground "black"))))
   `(ediff-current-diff-C ((((class color) (min-colors 16)) (:background "#5C285C" :foreground "white"))))
   `(ediff-even-diff-A ((((class color) (min-colors 16)) (:background "#083852"))))
   `(ediff-even-diff-Ancestor ((((class color) (min-colors 16)) (:background "#083852"))))
   `(ediff-even-diff-B ((((class color) (min-colors 16)) (:background "#083852"))))
   `(ediff-even-diff-C ((((class color) (min-colors 16)) (:background "#083852"))))
   `(ediff-fine-diff-A ((((class color) (min-colors 16)) (:background "#FFDD17" :foreground "blue"))))
   `(ediff-fine-diff-Ancestor ((((class color) (min-colors 16)) (:background "#FFDD17" :foreground "blue"))))
   `(ediff-fine-diff-B ((((class color) (min-colors 16)) (:background "#FFDD17" :foreground "blue"))))
   `(ediff-fine-diff-C ((((class color) (min-colors 16)) (:background "#D4A822" :foreground "black"))))
   `(ediff-odd-diff-A ((((class color) (min-colors 16)) (:background "#083852"))))
   `(ediff-odd-diff-Ancestor ((((class color) (min-colors 16)) (:background "#083852"))))
   `(ediff-odd-diff-B ((((class color) (min-colors 16)) (:background "#083852"))))



   ;; TODO
   ;; ido-mode
   ;; flycheck
   ;; show-paren
   ;; rainbow-delimiters
   ;; highlight-symbols
   ))

(defcustom molokai-theme-kit nil
  "Non-nil means load molokai-theme-kit UI component"
  :type 'boolean
  :group 'molokai-theme)

(defcustom molokai-theme-kit-file
  (concat (file-name-directory
           (or (buffer-file-name) load-file-name))
          "molokai-theme-kit.el")
  "molokai-theme-kit-file"
  :type 'string
  :group 'molokai-theme)

(if (and molokai-theme-kit
         (file-exists-p molokai-theme-kit-file))
    (load-file molokai-theme-kit-file))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))



(provide-theme 'molokai)
