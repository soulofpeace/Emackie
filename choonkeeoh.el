(add-to-list 'load-path "~/.emacs.d/vendor/scala/")
(require 'scala-mode-auto)

(add-to-list 'load-path "~/.emacs.d/vendor/color-theme/")
(require 'color-theme)
(color-theme-initialize)
;(color-theme-charcoal-black)
;; (color-theme-arjen)
;;(color-theme-late-night)

(load-file "~/.emacs.d/color-theme-almost-monokai.el")
(color-theme-almost-monokai)


(add-to-list 'load-path "~/.emacs.d/vendor/pcmpl-ssh/")
(add-to-list 'load-path "~/.emacs.d/vendor/cssh/")
(require 'cssh)

(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet-0.6.1c")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet-0.6.1c/snippets")

(add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/jdee-2.4.0.1/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/cedet-1.0pre7/common"))
(load-file (expand-file-name "~/.emacs.d/vendor/cedet-1.0pre7/common/cedet.el"))
(require 'jde)


(add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/w3m"))
(require 'w3m-load)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/psvn"))
(require 'psvn)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/ecb-2.40"))
(require 'ecb)

(add-to-list 'load-path "~/.emacs.d/vendors/company")
(require 'company)


;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/emacs-eclim/"))
;; ;; only add the vendor path when you want to use the libraries provided with emacs-eclim
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/emacs-eclim/vendor"))
;; (require 'eclim)



(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)


(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(setq 
 company-begin-commands '(self-insert-command)
 company-ispell-available t
 )

(defun complete-or-indent ()
  (interactive)
  (if (company-manual-begin)
      (company-complete-common)
    (indent-according-to-mode)))

(defun indent-or-complete ()
  (interactive)
  (if (looking-at "\\_>")
      (company-complete-common)
    (indent-according-to-mode)))

(global-set-key "\t" 'indent-or-complete)

;; Use ispell dictionary for completion in text-mode!
(add-hook 'text-mode-hook (lambda () (set (make-local-variable 'company-backends) '(company-dabbrev company-ispell))))

(global-company-mode 1)

(add-to-list 'exec-path "/opt/local/bin/")


(server-start)
