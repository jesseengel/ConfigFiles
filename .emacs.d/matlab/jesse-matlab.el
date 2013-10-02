;; MATLAB MODE

(autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
(add-to-list 'auto-mode-alist '("\\.m$" . matlab-mode))


;CEDET Stuff
(require 'matlab-load) ;(load-library "matlab-load")
(matlab-cedet-setup)
(add-hook 'matlab-mode
         (lambda ()
           (auto-complete-mode 1)
           ))

(semantic-add-system-include "~/Applications/MATLAB_R2011b.app/toolbox") ;; under matlab root

;;; fix for mlint to run ... dynamic lib is wrong or something
;;; ref: http://forums.somethingawful.com/showthread.php?threadid=3400187&userid=140079
(setenv "DYLD_LIBRARY_PATH" "/Applications/MATLAB_R2011b.app/bin/maci64" )
(setq mlint-programs (quote ("mlint" "mac/mlint" "maci64/mlint" 
"/Applications/MATLAB_R2011b.app/bin/maci64/mlint")))




;My Personal Preferences
(setq matlab-indent-function t)
(setq matlab-shell-command "matlab")
(setq matlab-show-periodic-code-details-flag nil)
(setq matlab-highlight-cross-function-variables t)
(setq matlab-return-add-semicolon t)

(setq matlab-show-mlint-warnings nil) 
(setq matlab-shell-ask-MATLAB-for-completions t)


;; (add-hook 'matlab-shell-mode
;;           (lambda ()
;; 	    (local-set-key (kbd "C-c") 'interrupt-process)
;; 	    ))

;; (add-hook 'matlab-mode
;;           (lambda ()
;;   (local-set-key (kbd "M-0") 'comment-region-or-line)
;;   (local-set-key (kbd "M-9") 'uncomment-region-or-line)
;;   ))


(defun my-matlab-shell-hook ()
  (local-set-key (kbd "C-c") 'interrupt-process))
(setq matlab-shell-hook 'my-matlab-shell-hook)


(defun my-matlab-mode-hook ()
  (local-set-key (kbd "M-0") 'comment-region-or-line)
  (local-set-key (kbd "M-9") 'uncomment-region-or-line))
(setq matlab-mode-hook 'my-matlab-mode-hook)

