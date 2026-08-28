;; -*- lexical-binding: t; -*-
(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(doom-modeline doom-themes org-bullets spacemacs-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-bar ((t (:background "#bd93f9"))))
 '(doom-modeline-bar-inactive ((t (:background "#44475a"))))
 '(gnus-group-news-low ((t (:inherit default))))
 '(gnus-group-news-low-empty ((t (:inherit gnus-group-mail-1-empty :weight normal))))
 '(mode-line-active ((t (:background "#282a36" :foreground "#f8f8f2"))))
 '(mode-line-inactive ((t (:background "#21222c" :foreground "#6272a4"))))
 '(window-divider ((t (:foreground "#e155c0" :background "#e155c0"))))
 '(window-divider-first-pixel ((t (:foreground "#e155c0" :background "#e155c0")))))
