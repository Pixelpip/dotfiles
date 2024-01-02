;;for themes 
(load-theme 'timu-macos t)

;;for loading fonts
;; Set JetBrains Mono font for default and specific modes
(set-face-attribute 'default nil :font "JetBrains Mono-14" :weight 'normal)
(set-face-attribute 'variable-pitch nil :font "JetBrains Mono-14") ; If you're using variable-pitch mode

;;for displaying line number and relative line numbers
;; Enable line numbers
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
;;thin cursor
;; Set cursor type to a thin bar
(setq-default cursor-type 'bar)
;;disbale menu bar on startup
(menu-bar-mode -1)
;;disabling the tool bar(bar with icons)
(tool-bar-mode -1)
; Set default tab width
(setq-default tab-width 2)
;;disable scroll bar
(scroll-bar-mode -1)

;;C programming setup
(setq c-default-style "linux"
			c-basic-offset 4)
;;electric pair mode for emacs
(electric-pair-mode 1)




;;melpa package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(dired-toggle-sudo timu-macos-theme doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )





