;;for themes 
(load-theme 'timu-macos t)

;;for loading emacs at fullscreen on start
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;;for loading fonts
;; Set JetBrains Mono font for default and specific modes
(set-face-attribute 'default nil :font "JetBrains Mono" :height 120)
(set-face-attribute 'variable-pitch nil :font "JetBrains Mono") ; If you're using variable-pitch mode

;;for displaying line number and relative line numbers
;; Enable line numbers
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
;;thin cursor
;; Set cursor type to a thin bar
(setq-default cursor-type 'bar)
;;disbale menu bar on startup
(menu-bar-mode -1)



;;melpa package manager
(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(js2-mode web-mode emmet-mode timu-macos-theme timu-spacegrey-theme monokai-theme dracula-theme nerd-icons neotree)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;web-mode configuration
;; Associate file extensions with web-mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))



;; Configure web-mode for specific behaviors
(defun my-web-mode-hook ()
  ;; Indentation settings
  (setq web-mode-markup-indent-offset 2) ; Indentation for HTML
  (setq web-mode-css-indent-offset 2)    ; Indentation for CSS
  (setq web-mode-code-indent-offset 2)   ; Indentation for JavaScript/PHP
  (setq web-mode-script-padding 2)       ; Indentation within script tags
  (setq web-mode-style-padding 2)        ; Indentation within style tags
  (setq web-mode-enable-current-element-highlight t) ; Highlight current HTML element
  (setq web-mode-enable-current-column-highlight t)  ; Highlight current column
  (setq web-mode-enable-auto-pairing t)             ; Enable auto-pairing of tags
  (setq web-mode-enable-css-colorization t))        ; Enable colorization of CSS colors

(add-hook 'web-mode-hook 'my-web-mode-hook)

;; Enable electric-pair-mode for auto-closing pairs
(electric-pair-mode t)

;; Other settings (optional)
(setq-default tab-width 2)       ; Set default tab width
(setq-default indent-tabs-mode nil) ; Use spaces instead of tabs for indentation

