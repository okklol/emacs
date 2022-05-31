(setq user-full-name "Leonardo Silveira"
      user-mail-address "leosimoesluz@gmail.com")

(setq auto-save-default t
      make-backup-files t)

(setq confirm-kill-emacs nil)

(setq doom-font (font-spec :family "VictorMono Nerd Font" :size 14)
      doom-variable-pitch-font (font-spec :family "VictorMono Nerd Font" :size 14))

(setq doom-theme 'catppuccin)

(setq doom-modeline-enable-word-count t)

(add-hook! '+doom-dashboard-functions :append
  (insert "\n" (+doom-dashboard--center +doom-dashboard--width "ok lol")))

(assoc-delete-all "Open org-agenda" +doom-dashboard-menu-sections)
(assoc-delete-all "Jump to bookmark" +doom-dashboard-menu-sections)
(assoc-delete-all "Open private configuration" +doom-dashboard-menu-sections)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'evil)
(evil-mode 1)

(require 'auto-complete-config)
(ac-config-default)

(require 'elcord)
(elcord-mode)

(setq fancy-splash-image (concat doom-private-dir "splash.png"))