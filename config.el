;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Ang Wei Neng"
      user-mail-address "weineng.a@gmail.com"
      doom-scratch-intial-major-mode 'lisp-interaction-mode
      company-idle-delay nil
      lsp-ui-sideline-enable nil
      lsp-enable-symbol-highlighting nil)

(setq doom-theme 'doom-monokai-pro)

;; Swap for Dvorak layout
(keyboard-translate ?\C-x ?\C-u)
(keyboard-translate ?\C-u ?\C-x)

(setq display-line-numbers-type t)
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)

(setq org-directory "~/.org/"
      org-ellipsis " ▼ "
      org-adapt-indentation nil
      org-habit-show-habits-only-for-today t)

(map! "C-s" #'swiper)

(setq direnv-always-show-summary nil)

(use-package! deadgrep
  :if (executable-find "rg")
  :init
  (map! "M-s" #'deadgrep))

(setq python-shell-completion-native-disabled-interpreters '("python"))

(add-hook 'python-mode-hook #'+format|enable-on-save)
(add-hook 'cc-mode-hook #'+format|enable-on-save)
(setq auto-save-visited-interval 2)
(auto-save-visited-mode +1)
