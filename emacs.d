(setq package-archives
        '(("Elpa"     . "https://elpa.gnu.org/packages/")
          ("Melpa Stable" . "https://stable.melpa.org/packages/")
          ("Melpa"        . "https://melpa.org/packages/")
          ("marmalade" . "http://marmalade-repo.org/packages/"))
        package-archive-priorities
        '(("MELPA Stable" . 10)
          ("GNU ELPA"     . 5)
          ("MELPA"        . 0)))
(setq inhibit-startup-screen t)
(setq-default display-line-numbers 'relative)
(menu-bar-mode 0)
(tool-bar-mode 0)
(ido-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(tango-dark))
 '(package-selected-packages
   '(clang-format clang-capf auto-complete-c-headers treemacs dracula-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
