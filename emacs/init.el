;;for themes 
(load-theme 'doom-peacock t)

;;for loading emacs at fullscreen on start
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;;for loading fonts
;; Set JetBrains Mono font for default and specific modes
(set-face-attribute 'default nil :font "JetBrains Mono" :height 120)
(set-face-attribute 'variable-pitch nil :font "JetBrains Mono") ; If you're using variable-pitch mode

;;for displaying line number and relative line numbers
;; Enable line numbers
(global-display-line-numbers-mode)
;;thin cursor
;; Set cursor type to a thin bar
(setq-default cursor-type 'bar)
;;disbale menu bar on startup
(menu-bar-mode -1)
;;disabling the tool bar(bar with icons)
(tool-bar-mode -1)
;;C programming setup
(setq c-default-style "linux"
			c-basic-offset 4)
;;electric pair mode for emacs
(electric-pair-mode 1)
;;disable scroll bar
(scroll-bar-mode -1)

;;window-movement keybindings
(windmove-default-keybindings 'meta)

;;backward character delete
(setq backward-delete-char-untabify-method nil)

;;preventing emacs buffer and window retardedness
(setq display-buffer-function 'display-buffer-same-window)
(setq magit-display-buffer-function 'magit-display-buffer-same-window-except-diff-v1)
(setq pop-up-windows nil)

;;markdown live preview
(setq markdown-preview-refresh-interval 0.5) ; Set to 0.5 seconds, adjust as needed

;;magit
(use-package magit
  :ensure t)

;;melpa packages
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
 '(custom-safe-themes
   '("e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "c1d5759fcb18b20fd95357dcd63ff90780283b14023422765d531330a3d3cec2" "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478" "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" "afe5e2fb3b1e295e11c3c22e7d9ea7288a605c110363673987c8f6d05b1e9972" "e8ceeba381ba723b59a9abc4961f41583112fc7dc0e886d9fc36fa1dc37b4079" "77fff78cc13a2ff41ad0a8ba2f09e8efd3c7e16be20725606c095f9a19c24d3d" "9013233028d9798f901e5e8efb31841c24c12444d3b6e92580080505d56fd392" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "93011fe35859772a6766df8a4be817add8bfe105246173206478a0706f88b33d" "81f53ee9ddd3f8559f94c127c9327d578e264c574cda7c6d9daddaec226f87bb" "37b6695bae243145fa2dfb41440c204cd22833c25cd1993b0f258905b9e65577" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "4594d6b9753691142f02e67b8eb0fda7d12f6cc9f1299a49b819312d6addad1d" "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "38c0c668d8ac3841cb9608522ca116067177c92feeabc6f002a27249976d7434" "dd4582661a1c6b865a33b89312c97a13a3885dc95992e2e5fc57456b4c545176" "ee0785c299c1d228ed30cf278aab82cf1fa05a2dc122e425044e758203f097d2" "835d934a930142d408a50b27ed371ba3a9c5a30286297743b0d488e94b225c5f" "7d1c7ea4f3e73402f012b7011fc4be389597922fa67ad4ec417816971bca6f9d" "9c72688b960c505a8495585ddd9a9764e991884ebf87c7fbedc3f31851d2add2" "147f19ccebab5eb81ce9af9d40446000a3c5d0aab33313550d05d0e5f58d77cb" "c6a4bcc165d8bfc545bfc9cecdc062ba6610a72349e2765c5dca2bcaf110942d" "76eb683894aa00c77e55f482a23233d0007d59cc47a5653a37ad2897f31330b0" default))
 '(package-selected-packages
   '(pdf-tools markdown-mode perspective magit abyss-theme dakrone-theme fireplace all-the-icons-nerd-fonts doom-themes adwaita-dark-theme package-safe-delete))
 '(warning-suppress-log-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
