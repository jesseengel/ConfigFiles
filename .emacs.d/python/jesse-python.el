;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python mode customizations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'python)

;(require 'python-mode)
;;Activate for all .py files
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;(setq ipython-command "/Library/Frameworks/Python.framework/Versions/Current/bin/ipython")
;(setq py-python-command "/Library/Frameworks/Python.framework/Versions/Current/bin/ipython")
;(require 'ipython)


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


;;Jedi Autocomplete

(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional
(add-hook 'python-mode-hook 'jedi:setup)
(require 'jedi)
;(autoload 'jedi:setup "jedi" nil t)



;;Emacs iPython Notebook (ein)
;;(require 'request)
;;(require 'websocket)
;;(require 'auto-complete)
;;(require 'popup)
;;(require 'smartrep)
;;(require 'ein)



;;;;; To teach Emacs about symbols in imported modules, Emacs needs to execute
;;;;; the Python source. This can be accomplished with `python-send-buffer` for
;;;;; example, often bound to `C-c C-c`. If a python process is already running,
;;;;; this is essentially instantaneous.
;; (require 'ac-python)
;; (require 'auto-complete)
;; (add-to-list 'ac-dictionary-directories "~/Documents/emacs/ac-dict")
;; (require 'auto-complete-config)
;; (ac-config-default)
;; (global-auto-complete-mode t)



;; ;; Initialize Pymacs
;; (autoload 'pymacs-apply "pymacs")
;; (autoload 'pymacs-call "pymacs")
;; (autoload 'pymacs-eval "pymacs" nil t)
;; (autoload 'pymacs-exec "pymacs" nil t)
;; (autoload 'pymacs-load "pymacs" nil t)



;; ;; Initialize Rope
;; ;(pymacs-load "ropemacs" "rope-")
;; ;(setq ropemacs-enable-autoimport t)



;;Disabling Ropemacs Shortcuts
;(setq ropemacs-enable-shortcuts nil)
;(setq ropemacs-local-prefix "C-c C-p")


