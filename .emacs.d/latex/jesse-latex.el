;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Latex mode customizations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook `LaTeX-mode-hook `turn-on-reftex)
(setq reftex-plug-into-auctex t)


;; Things to make pdf syncing work between aquaemacs and skim
;; The following only works with AUCTeX loaded
;; ^C-^V does sync view
;;(require 'tex-site)
(add-hook 'TeX-mode-hook
    (lambda ()
        (add-to-list 'TeX-output-view-style
            '("^pdf$" "."
              "/Applications/Skim.app/Contents/SharedSupport/displayline %n %o %b")))
)

;; Use PDF mode by default
(setq-default TeX-PDF-mode t)

;; Make emacs aware of multi-file projects
(setq-default TeX-master nil)
