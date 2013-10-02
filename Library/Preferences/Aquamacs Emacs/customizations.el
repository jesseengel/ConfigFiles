;;; Almost Monokai: color-theme-almost-monokai.el
;;; A beautiful, fruity and calm emacs color theme.
;; Depends: color-theme

; Color theme support is required.
(require 'color-theme)

; Code start.
(defun color-theme-almost-monokai ()
  (interactive)
  (color-theme-install
   '(color-theme-almost-monokai
     ((background-color . "#272821")
      (foreground-color . "#F8F8F2")
      (cursor-color . "#DAD085"))
     (default ((t (nil))))
     (modeline ((t (:background "white" :foreground "black" :box (:line-width 1 :style released-button)))))
     (font-lock-builtin-face ((t (:foreground "#A6E22A"))))
     (font-lock-comment-face ((t (:italic t :foreground "#75715D"))))
     (font-lock-constant-face ((t (:foreground "#A6E22A"))))
     (font-lock-doc-string-face ((t (:foreground "#65B042"))))
     (font-lock-string-face ((t (:foreground "#DFD874"))))
     (font-lock-function-name-face ((t (:foreground "#F1266F" :italic t))))
     (font-lock-keyword-face ((t (:foreground "#66D9EF"))))
     (font-lock-type-face ((t (:underline t :foreground "#89BDFF"))))
     (font-lock-variable-name-face ((t (:foreground "#A6E22A"))))
     (font-lock-warning-face ((t (:bold t :foreground "#FD5FF1"))))
     (highlight-80+ ((t (:background "#D62E00"))))
     (hl-line ((t (:background "#1A1A1A"))))
     (region ((t (:background "#6DC5F1"))))
     (ido-subdir ((t (:foreground "#F1266F"))))
    )
  )
)
(provide 'color-theme-almost-monokai)
;---------------
; Code end.
(color-theme-almost-monokai)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 216 t)
 '(aquamacs-tool-bar-user-customization (quote ((4194506))) t)
 '(default-frame-alist (quote ((internal-border-width . 0) (vertical-scroll-bars . right) (cursor-type . box) (modeline . t) (fringe) (color-theme-name . color-theme-almost-monokai) (mouse-color . "black") (background-mode . dark) (tool-bar-lines . 1) (menu-bar-lines . 1) (right-fringe . 8) (left-fringe . 1) (cursor-color . "#DAD085") (background-color . "#272821") (foreground-color . "#ffffff") (font . "-apple-Menlo-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1") (fontsize . 0) (font-backend ns))))
 '(ede-project-directories (quote ("/Users/jengel/Desktop/SDM_basic")))
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(indicate-buffer-boundaries (quote right))
 '(ns-tool-bar-display-mode (quote labels) t)
 '(ns-tool-bar-size-mode (quote small) t)
 '(tabbar-mode nil nil (tabbar))
 '(visual-line-mode nil t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(matlab-mode-default ((t (:inherit autoface-default :foreground "#ffffff" :height 150 :family "Menlo"))) t)
 '(matlab-simulink-keyword-face ((t (:foreground "#89BDFF" :underline nil))))
 '(text-mode-default ((t (:inherit default :foreground "#ffffff" :height 150 :family "Menlo")))))
