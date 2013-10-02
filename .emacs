;;Define Loadpath
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/")
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Divert autosaves
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))

;;Color theme
;;(load-theme 'tango t)


;;Package Managers (package.el)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(require 'package)
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (when (< emacs-major-version 24)
;;   (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;; ;;Package.el Recipes
;; ;;ein - ipython notebook
;; (add-to-list 'package-archives '(ein :repo "tkf/emacs-ipython-notebook" :fetcher github
;;      :files ("lisp/*")))
;; (package-initialize)


;;el-get
;;;;;;;;;;;;;;;;;;;;
;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;     (let (el-get-master-branch)
;;       (goto-char (point-max))
;;       (eval-print-last-sexp))))

;; (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;(el-get 'sync)





;;Minor Modes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Activate ido mode (interactive do things)
(require 'ido)
(ido-mode t)

;Autopair
(load-library "jesse-autopair")

;; Evil (VIM) Mode
(require 'evil)
(setq evil-want-fine-undo t)
;(evil-mode t)

;;Cursor type
(setq cursor-type 'box)
(setq global-hl-line-mode t)
(setq x-stretch-cursor t)


;;Autocomplete Mode
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete-1.3.1/dict")
(require 'auto-complete-config)
(ac-config-default)

;;Speedbar
(require 'sr-speedbar)
;(sr-speedbar-open)


;;Global Keymaps
(global-unset-key (kbd "M-,"))
(global-set-key (kbd "M-.") 'comment-region-or-line)
(global-set-key (kbd "M-,") 'uncomment-region-or-line)

(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'sr-speedbar-toggle)





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
(autoload 'python-mode "jesse-python" "" t)


;;Faust.el Code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq auto-mode-alist (cons '("\\.dsp$" . faust-mode) auto-mode-alist))
(autoload 'faust-mode "faust-mode" "FAUST editing mode." t)


;;Matlab Mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'matlab-mode "jesse-matlab" "" t)

