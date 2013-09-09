;;Define Loadpath
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/")
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Divert autosaves
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))




;;Package Manager (package.el)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;;Package.el Recipes
;;ein - ipython notebook
(ein :repo "tkf/emacs-ipython-notebook" :fetcher github
     :files ("lisp/*"))



;;Minor Modes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Activate ido mode (interactive do things)
(require 'ido)
(ido-mode t)

;Autopair
(load-library "jesse-autopair")

;; Evil (VIM) Mode
(require 'evil)
;(evil-mode t)
(setq evil-want-fine-undo t)



;;Major Modes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Latex Mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'latex-mode "jesse-latex")

;;Python mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Takes a long time loading, I'm not cool enough to need rope at the moment
;(autoload 'python-mode "jesse-python" "" t)
;;ein is Emacs Ipython Notebook
(autoload 'python-mode "jesse-ein" "" t)


;;Faust.el Code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(setq auto-mode-alist (cons '("\\.dsp$" . faust-mode) auto-mode-alist))
;(autoload 'faust-mode "faust-mode" "FAUST editing mode." t)


;;Matlab Mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
(add-to-list
  'auto-mode-alist
  '("\\.m$" . matlab-mode))
(setq matlab-indent-function t)
(setq matlab-shell-command "matlab")

(defun my-matlab-shell-mode-hook ()
  (global-set-key "C-c" 'interrupt-process))
(setq matlab-shell-hook 'my-matlab-shell-hook)
