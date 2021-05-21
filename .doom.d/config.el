;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Afiq Nazrie Rabbani"
      user-mail-address "afnazrie@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
(setq doom-font (font-spec :family "Inconsolata Go Nerd Font" :size 14))
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; config
(setq confirm-kill-emacs nil)
(setq
    maximum-scroll-margin 0.5
    scroll-margin 999
    )
(setq
    grip-github-user "mangkoran"
    grip-github-password "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"
    grip--port 7272
    )
(after! recentf
    (setq recentf-auto-cleanup 'mode)
    )
(setq! ispell-dictionary "en-custom")
(setq! ispell-personal-dictionary (expand-file-name ".ispell_persona" doom-private-dir))
(setq! auth-sources '("~/.authinfo.gpg"))

(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-footer)
(add-hook! '+doom-dashboard-mode-hook (hide-mode-line-mode 1) (hl-line-mode -1))
(setq-hook! '+doom-dashboard-mode-hook evil-normal-state-cursor (list nil))

(setq-default
    ;; delete-by-moving-to-trash   t
    window-combination-resize t
    x-stretch-cursor t
    )
(setq
    undo-limit 8000000
    ;; evil-want-fine-undo t
    auto-save-default t
    truncate-string-ellipsis "…"
    )
;; (display-time-mode 1)
(global-subword-mode 1)
(add-to-list 'default-frame-alist '(height . 20))
;; (setq-default custom-file (expand-file-name ".custom.el" doom-private-dir))
;; (when (file-exists-p custom-file)
;;     (load custom-file))
(setq
    evil-split-window-below t
    evil-vsplit-window-right t
    )
(defadvice! prompt-for-buffer (&rest _)
    :after '(evil-window-split evil-window-vsplit)
    (+ivy/switch-buffer)
    )
(setq +ivy-buffer-preview t)
;; (setq-default major-mode 'org-mode)
(after! company
    (setq
        company-idle-delay 0
        company-minimum-prefix-length 2)
    (setq company-show-numbers t)
    (add-hook 'evil-normal-state-entry-hook #'company-abort)) ;; make aborting less annoying.
(setq ivy-read-action-function #'ivy-hydra-read-action)
(setq ivy-sort-max-size 50000)
;; keymap
(map!
    :after company
    :map company-active-map
    "<tab>" nil
    ;; "TAB" nil
    )
;; (map!
;;     :after evil-org
;;     :map evil-org-mode-map
;;     "<tab>" nil
;;     )
(map!
    :after org
    :map org-mode-map
    "<tab>" nil
    ;; "TAB" nil
    )
(map! :map evil-window-map
    "SPC" #'rotate-layout
    ;; Navigation
    "<left>"  #'evil-window-left
    "<down>"  #'evil-window-down
    "<up>"    #'evil-window-up
    "<right>" #'evil-window-right
    ;; Swapping windows
    "C-<left>"  #'+evil/window-move-left
    "C-<down>"  #'+evil/window-move-down
    "C-<up>"    #'+evil/window-move-up
    "C-<right>" #'+evil/window-move-right
    )

;; package
(use-package! evil-matchit
    :init
    (global-evil-matchit-mode)
    )
