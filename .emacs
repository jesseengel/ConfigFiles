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


;;Solarized Coloring
;(add-to-list 'custom-theme-load-path "~/.emacs.d/color-theme")
;(load-theme 'color-theme-solarized-dark t)

;;Pre emacs24 (aquamacs)
(require 'color-theme-solarized)
;;(require 'color-theme-almost-monokai)
(color-theme-solarized-dark)
;;(color-theme almost-monokai)

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



;Aquamacs Customizations
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 216 t)
 '(aquamacs-tool-bar-user-customization (quote ((4194506))) t)
 '(default-frame-alist (quote ((internal-border-width . 0) (vertical-scroll-bars . right) (cursor-type . box) (modeline . t) (fringe) (color-theme-name . color-theme-solarized-dark) (mouse-color . "black") (background-mode . dark) (tool-bar-lines . 1) (menu-bar-lines . 1) (right-fringe . 8) (left-fringe . 1) (cursor-color . "#DAD085") (font . "-apple-Menlo-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1") (fontsize . 0) (font-backend ns))))
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(indicate-buffer-boundaries (quote right))
 '(ns-tool-bar-display-mode (quote labels) t)
 '(ns-tool-bar-size-mode (quote small) t)
 '(tabbar-mode nil nil (tabbar))
 '(visual-line-mode nil t))
;(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;; '(matlab-mode-default ((t (:inherit autoface-default :foreground "#ffffff" :height 150 :family "Menlo"))) t)
;; '(matlab-simulink-keyword-face ((t (:foreground "#89BDFF" :underline nil))))
;; '(text-mode-default ((t (:inherit default :foreground "#ffffff" :height 150 :family "Menlo")))))
