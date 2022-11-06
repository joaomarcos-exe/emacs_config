(defvar all-the-icons-p "C:/Users/joaom/.emacs.d/all-the-icons-fonts/")

;; Remover boas vindas
(setq inhibit-startup-message t)

;; Remover menus
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Remover barra de rolagem
(scroll-bar-mode -1)

;; Numeros nas linhas
(global-linum-mode t)

;; Pacotes
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  )
(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (progn
    (which-key-setup-side-window-right-bottom)
    (which-key-mode)
   )
  )

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
   )
  )

(use-package all-the-icons
:after (:any neo-tree all-the-icons-dired-mode)
:load-path all-the-icons-p
)

(use-package neotree
  :ensure t
  :config (progn (setq neo-theme (if (display-graphic-p)'icons 'arrow)))
  :bind (("C-\\" . 'neotree-toggle))
  )

(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "M-<down>") 'enlarge-window)
(global-set-key (kbd "M-<up>") 'shrink-window)
(global-set-key (kbd "M-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<right>") 'shrink-window-horizontally)

(use-package ace-window
  :ensure t
  :bind (("C-x o" . ace-window))
  )

;; Melpa stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(deeper-blue))
 '(custom-safe-themes
   '("05626f77b0c8c197c7e4a31d9783c4ec6e351d9624aa28bc15e7f6d6a6ebd926" "2f08b4f5ff619bdfa46037553ea41f72f09013a2e6b7287799db6cec6a7dddb2" default))
 '(package-selected-packages
   '(dracula-theme melancholy-theme ace-window all-the-icons neotree auto-complete which-key try use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
