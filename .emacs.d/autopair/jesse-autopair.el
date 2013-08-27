;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autopair mode customizations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; turn on auto-pair mode
(require `autopair)
(autopair-global-mode)

;; hopefully this should make autopair work with dollar signs
(add-hook 'LaTeX-mode-hook
          #'(lambda ()
              (modify-syntax-entry ?$ "\"")))

;; enable auto-wrap for AutoPair
(setq autopair-autowrap t)