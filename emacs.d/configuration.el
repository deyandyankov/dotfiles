(load-file "~/.emacs.d/sensible-defaults.el")
(sensible-defaults/use-all-settings)
(sensible-defaults/use-all-keybindings)
(sensible-defaults/backup-to-temp-directory)

(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-dracula t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme (all-the-icons must be installed!)
;; (doom-themes-neotree-config)
;; or for treemacs users
;; (doom-themes-treemacs-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

(require 'org)
(require 'ox-twbs)
(setq org-agenda-files (list "~/org/personal.org"
                             "~/org/recurring.org"))
(setq org-log-done t)
(setq org-export-coding-system 'utf-8)
(setq org-ellipsis "⤵")
(define-key global-map "\C-ca" 'org-agenda)

(setq org-agenda-todo-ignore-scheduled 'future)
(setq org-agenda-tags-todo-honor-ignore-options t)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-deadline-warning-days 0)

(add-hook 'calendar-load-hook (lambda () (calendar-set-date-style 'european)))
(setq calendar-week-start-day 1)

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

(add-to-list 'load-path "~/repos/julia-emacs")
(require 'julia-mode)
