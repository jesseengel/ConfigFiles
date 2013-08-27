;;Define Loadpath
;(add-to-list 'load-path "/Users/jengel/Documents/emacs/")
(add-to-list 'load-path "~/.emacs.d/")
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;Add all the subdirectories
;(let ((default-directory "~/Documents/emacs/"))
;  (normal-top-level-add-subdirs-to-load-path))

;; Divert autosaves
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))


;;Activate ido mode (interactive do things)
(require 'ido)
(ido-mode t)

;Autopair
(load-library "jesse-autopair")


;;Latex Mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'latex-mode "jesse-latex")
;(load-library "jesse-latex")

;;Python mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Takes a long time loading, I'm not cool enough to need rope at the moment
;(load-library "jesse-python")
(autoload 'python-mode "jesse-python" "" t)

;;Faust.el Code
;(setq auto-mode-alist (cons '("\\.dsp$" . faust-mode) auto-mode-alist))
;(autoload 'faust-mode "faust-mode" "FAUST editing mode." t)


;; Evil (VIM) Mode
;(require 'evil)
;(evil-mode 1)

;;Matlab Mode
(autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
(add-to-list
  'auto-mode-alist
  '("\\.m$" . matlab-mode))
(setq matlab-indent-function t)
(setq matlab-shell-command "matlab")

(defun my-matlab-shell-mode-hook ()
  (global-set-key "C-c" 'interrupt-process))
(setq matlab-shell-hook 'my-matlab-shell-hook)