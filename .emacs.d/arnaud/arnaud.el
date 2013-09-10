;;; arnaud.el --- custom arnaud functions
;;CUSTOM arnaud funcs

(defun arnaud-hide-fileformat-convertion (active)
 (if(= active 0)
  (setq inhibit-eol-conversion nil)
 )
 (if(= active 1)
  (setq inhibit-eol-conversion 1)
 )
 (interactive "nActive?(1:yes,0:no)")
 (revert-buffer t t t)
 (message "inhibit-eol-conversion set to 1"))

(defun arnaud-emacs-main-configure ()
 (interactive)
 (find-file "/home/arnaud/.emacs"))
(defun arnaud-emacs-arnaud-el-configure ()
 (interactive)
 (find-file "/home/arnaud/.emacs.d/arnaud.el"))

