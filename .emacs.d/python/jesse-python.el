;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python mode customizations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'python)
(require 'ac-python)


;;Activate autocomplete
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/Documents/emacs/ac-dict")
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;;Activate for all .py files
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;;Python-mode
  (autoload 'python-mode "python-mode" "Python Mode." t)
  (add-to-list 'interpreter-mode-alist '("python" . python-mode))
  (setq interpreter-mode-alist
        (cons '("python" . python-mode)
  	    interpreter-mode-alist)
        python-mode-hook
        '(lambda () (progn
  		    (set-variable 'py-indent-offset 4)
  		    (set-variable 'py-smart-indentation nil)
  		    (set-variable 'indent-tabs-mode nil) 
  		    ;;(highlight-beyond-fill-column)
                      (define-key python-mode-map "\C-m" 'newline-and-indent)
  		    (pabbrev-mode)
  		    (abbrev-mode)
  	 )
        )
  )

;; Initialize Pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;; Initialize Rope
;(pymacs-load "ropemacs" "rope-")
;(setq ropemacs-enable-autoimport t)



;;Disabling Ropemacs Shortcuts
;(setq ropemacs-enable-shortcuts nil)
;(setq ropemacs-local-prefix "C-c C-p")

;;Define my own Ropemacs shortcuts
;(define-key ropemacs-local-keymap "\C-cg" 'rope-goto-definition)


;; ================  ============================
;; Key               Command
;; ================  ============================
;; M-/               rope-code-assist
;; M-?               rope-lucky-assist
;; C-c g             rope-goto-definition
;; C-c d             rope-show-doc
;; C-c f             rope-find-occurrences
;; ================  ============================



