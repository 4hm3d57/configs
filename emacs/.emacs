(setq package-archives '(("Elpa" . "https://elpa.gnu.org/packages/")
        ("Melpa Stable" . "https://stable.melpa.org/packages/")
        ("Melpa" . "https://melpa.org/packages/") ("marmalade"
        . "http://marmalade-repo.org/packages/"))
        package-archive-priorities '(("MELPA Stable" . 10) ("GNU ELPA"
        . 5) ("MELPA" . 0))) (setq inhibit-startup-screen t)
        (global-set-key (kbd "M-x") 'smex) (global-set-key (kbd "M-X")
        'smex-major-mode-commands) (global-set-key (kbd "C-c C-c M-x")
        'execute-extended-command) (require 'term) (setq
        explicit-shell-file-name "powershell.exe") ; Set the shell
        executable path (setq-default display-line-numbers 'relative)
        (setq backup-directory-alist '(("." . "~/.emacs_saves")))
        (setq split-width-threshold nil) (menu-bar-mode 0)
        (tool-bar-mode 0) (ido-mode 1) (setq explicit-shell-file-name
        "cmdproxy.exe") (setq shell-file-name
        explicit-shell-file-name)

(setq shell-command-switch "-c") (setq w32-quote-process-args t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/") ;;(load-theme
'blue-mood t) ;;Set the path to the gpg executable (setq
epg-gpg-program "C:\Program Files (x86)\gnupg\bin\gpg.exe") ;;Set the
path to the gpg-agent executable (setq epg-gpg-agent-info-home
"C:\Program Files (x86)\gnupg")

(require 'lsp-mode) (add-hook 'c++-mode-hook #'lsp)

(require 'company) (add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1) (setq company-idle-delay 0.2)
(setq company-tooltip-align-annotations t) (setq
company-lsp-enable-snippet t)

(require 'lsp-ui) (add-hook 'lsp-mode-hook 'lsp-ui-mode) (setq
lsp-ui-sideline-show-hover t) (setq lsp-ui-sideline-show-code-actions
t)


;;starts here

(require 'package) (add-to-list 'package-archives '("melpa"
. "http://melpa.org/packages/") t) (package-initialize)

(setq package-selected-packages '(lsp-mode yasnippet lsp-treemacs
    helm-lsp projectile hydra flycheck company avy which-key helm-xref
    dap-mode))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents) (mapc #'package-install
  package-selected-packages))

;; sample `helm' configuration use https://github.com/emacs-helm/helm/
for details (helm-mode) (require 'helm-xref) (define-key global-map
[remap find-file] #'helm-find-files) (define-key global-map [remap
execute-extended-command] #'helm-M-x) (define-key global-map [remap
switch-to-buffer] #'helm-mini)

(which-key-mode) (add-hook 'c-mode-hook 'lsp) (add-hook 'c++-mode-hook
'lsp)

(setq gc-cons-threshold (* 100 1024 1024) read-process-output-max (*
      1024 1024) treemacs-space-between-root-nodes nil
      company-idle-delay 0.0 company-minimum-prefix-length 1
      lsp-idle-delay 0.1) ;; clangd is fast

(with-eval-after-load 'lsp-mode (add-hook 'lsp-mode-hook
  #'lsp-enable-which-key-integration) (require 'dap-cpptools)
  (yas-global-mode))

;;end here

(custom-set-variables ;; custom-set-variables was added by Custom.  ;;
If you edit it by hand, you could mess it up, so be careful.  ;; Your
init file should contain only one such instance.  ;; If there is more
than one, they won't work right.  '(ansi-color-faces-vector [default
default default italic underline success warning error])
'(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f"
"#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"]) '(custom-enabled-themes
'(doom-gruvbox)) '(custom-safe-themes
'("7d1c7ea4f3e73402f012b7011fc4be389597922fa67ad4ec417816971bca6f9d"
"1f41dd6c057aed94c41525c394131090086687d59b559c9690b5cd3a9894ef39"
"058ba0ed929f801fc4077617e816797654c7775382943520875642d5507d8696"
"803222befe5588415ac1c5cc4362637ecc80f7a221af513e04c212312925e26c"
"352fe04cb16f69838d81213a8424cf866e87212676532021b618805dca8b3942"
"3512fce0f3d84ca65bb58d7bfe9ddedf27ff96eee573c6e6dc0ba61d25a47d72"
"70b596389eac21ab7f6f7eb1cf60f8e60ad7c34ead1f0244a577b1810e87e58c"
"02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644"
"afa47084cb0beb684281f480aa84dab7c9170b084423c7f87ba755b15f6776ef"
"5b9a45080feaedc7820894ebbfe4f8251e13b66654ac4394cb416fef9fdca789"
"ddffe74bc4bf2c332c2c3f67f1b8141ee1de8fd6b7be103ade50abb97fe70f0c"
"00cec71d41047ebabeb310a325c365d5bc4b7fab0a681a2a108d32fb161b4006"
"1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00"
"7e068da4ba88162324d9773ec066d93c447c76e9f4ae711ddd0c5d3863489c52"
"8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a"
"b54376ec363568656d54578d28b95382854f62b74c32077821fdfd604268616a"
"3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da"
"b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0"
"a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f"
"8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443"
"251ed7ecd97af314cd77b07359a09da12dcd97be35e3ab761d4a92d8d8cf9a71"
"9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68"
"f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725"
"51c71bb27bdab69b505d9bf71c99864051b37ac3de531d91fdad1598ad247138"
"2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350"
"da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738"
"dc8285f7f4d86c0aebf1ea4b448842a6868553eded6f71d1de52f3dcbc960039"
"512ce140ea9c1521ccaceaa0e73e2487e2d3826cc9d287275550b47c04072bc4"
"ae426fc51c58ade49774264c17e666ea7f681d8cae62570630539be3d06fd964"
"89d9dc6f4e9a024737fb8840259c5dd0a140fd440f5ed17b596be43a05d62e67"
"0c08a5c3c2a72e3ca806a29302ef942335292a80c2934c1123e8c732bb2ddd77"
"636b135e4b7c86ac41375da39ade929e2bd6439de8901f53f88fde7dd5ac3561"
"7ea883b13485f175d3075c72fceab701b5bf76b2076f024da50dff4107d0db25"
"991ca4dbb23cab4f45c1463c187ac80de9e6a718edc8640003892a2523cb6259"
"f8f2ae09e73f172576c29006cfabee7fbd7b629e13e1a45fa35934c71396ca55"
"be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78"
"b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22"
"bddf21b7face8adffc42c32a8223c3cc83b5c1bbd4ce49a5743ce528ca4da2b6"
"af0dd903499abb4c169ebdf548649a0ba01eb98df82bd787c51ca11f65403b1b"
"bf948e3f55a8cd1f420373410911d0a50be5a04a8886cabe8d8e471ad8fdba8e"
"1aa4243143f6c9f2a51ff173221f4fd23a1719f4194df6cef8878e75d349613d"
"ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0"
"5f128efd37c6a87cd4ad8e8b7f2afaba425425524a68133ac0efd87291d05874"
"2853dd90f0d49439ebd582a8cbb82b9b3c2a02593483341b257f88add195ad76"
"5586a5db9dadef93b6b6e72720205a4fa92fd60e4ccfd3a5fa389782eab2371b"
"683b3fe1689da78a4e64d3ddfce90f2c19eb2d8ab1bab1738a63d8263119c3f4"
"e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2"
"467dc6fdebcf92f4d3e2a2016145ba15841987c71fbe675dcfe34ac47ffb9195"
"4ff1c4d05adad3de88da16bd2e857f8374f26f9063b2d77d38d14686e3868d8d"
"f458b92de1f6cf0bdda6bce23433877e94816c3364b821eb4ea9852112f5d7dc"
"016f665c0dd5f76f8404124482a0b13a573d17e92ff4eb36a66b409f4d1da410"
"49acd691c89118c0768c4fb9a333af33e3d2dca48e6f79787478757071d64e68"
"60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8"
"e1f4f0158cd5a01a9d96f1f7cdcca8d6724d7d33267623cc433fe1c196848554"
"adaf421037f4ae6725aa9f5654a2ed49e2cd2765f71e19a7d26a454491b486eb"
"eca44f32ae038d7a50ce9c00693b8986f4ab625d5f2b4485e20f22c47f2634ae"
"aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8"
"680f62b751481cc5b5b44aeab824e5683cf13792c006aeba1c25ce2d89826426"
"a44e2d1636a0114c5e407a748841f6723ed442dc3a0ed086542dc71b92a87aee"
"631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b"
"a138ec18a6b926ea9d66e61aac28f5ce99739cf38566876dc31e29ec8757f6e2"
"2dd4951e967990396142ec54d376cced3f135810b2b69920e77103e0bcedfba9"
"6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4"
"7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525"
"246cd0eb818bfd347b20fb6365c228fddf24ab7164752afe5e6878cb29b0204e"
"94a94c957cf4a3f8db5f12a7b7e8f3e68f686d76ae8ed6b82bd09f6e6430a32c"
"834530aef9fbd26a37e87ab77397511db4451f5c0b0d02881fbc5847ef436f83"
"2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce"
"a556e4e6fc62469cd28a57c3b5386807d676a33176659f849fc53fa8763f5955"
"b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97"
"7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184"
default)) '(exwm-floating-border-color "#0d0d0d") '(fci-rule-color
"#383838") '(frame-brackground-mode 'dark) '(highlight-tail-colors
((("#2c2e28") . 0) (("#272e30") . 20)))
'(jdee-db-active-breakpoint-face-colors (cons "#0d0d0d" "#81a2be"))
'(jdee-db-requested-breakpoint-face-colors (cons "#0d0d0d" "#b5bd68"))
'(jdee-db-spec-breakpoint-face-colors (cons "#0d0d0d" "#5a5b5a"))
'(nrepl-message-colors '("#183691" "#888a88" "#539100" "#888a88"
"#0086b3" "#183691" "#539100" "#888a88")) '(objed-cursor-color
"#cc6666") '(package-selected-packages '(ac-html dap-mode use-package
lsp-ui ahungry-theme abyss-theme espresso-theme eshell-vterm 2048-game
chess cdlatex ccls lsp-mode lsp-java company-glsl npm-mode npm rustic
cargo all-the-icons-ibuffer all-the-icons-dired all-the-icons
dashboard term+ vscode-icon vscode-dark-plus-theme rubik org-evil
pdfgrep impatient-mode company-irony-c-headers company-irony company
typit typing-game vterm smex gruber-darker-theme terminal-toggle
kuronami-theme pdf-view-restore pdf-tools clang-format+ ac-clang magit
git-command terminal-here powershell auto-complete-c-headers
auto-complete-clang company-c-headers yasnippet aggressive-indent
auto-complete github-search git-auto-commit-mode git doom-themes evil
dakrone-theme cyberpunk-2019-theme cyberpunk-theme chyla-theme
bluetooth clang-format clang-capf treemacs dracula-theme))
'(pdf-view-midnight-colors (cons "#c5c8c6" "#1d1f21"))
'(rustic-ansi-faces ["#1d1f21" "#cc6666" "#b5bd68" "#f0c674" "#81a2be"
"#c9b4cf" "#8abeb7" "#c5c8c6"]) '(vc-annotate-background "#1d1f21")
'(vc-annotate-color-map (list (cons 20 "#b5bd68") (cons 40 "#c8c06c")
(cons 60 "#dcc370") (cons 80 "#f0c674") (cons 100 "#eab56d") (cons 120
"#e3a366") (cons 140 "#de935f") (cons 160 "#d79e84") (cons 180
"#d0a9a9") (cons 200 "#c9b4cf") (cons 220 "#ca9aac") (cons 240
"#cb8089") (cons 260 "#cc6666") (cons 280 "#af6363") (cons 300
"#936060") (cons 320 "#765d5d") (cons 340 "#5c5e5e") (cons 360
"#5c5e5e"))) '(vc-annotate-very-old-color nil)) (custom-set-faces ;;
custom-set-faces was added by Custom.  ;; If you edit it by hand, you
could mess it up, so be careful.  ;; Your init file should contain
only one such instance.  ;; If there is more than one, they won't work
right.  '(custom-comment ((t (:background "dim gray"))))
'(font-lock-preprocessor-face ((t (:foreground "white"))))
'(font-lock-string-face ((t (:foreground "wheat")))) '(ido-indicator
((t (:background "gray37" :foreground "black" :width condensed))))
'(ido-only-match ((t (:foreground "dark gray")))) '(ido-subdir ((t
(:foreground "white")))) '(mode-line ((t (:background "white"
:foreground "darkblue")))) '(mode-line-buffer-id ((t (:background
"white" :foreground "darkblue")))) '(region ((t (:extend t :background
"slate gray" :foreground "white")))))

;; set transparency (set-frame-parameter (selected-frame) 'alpha '(85
85)) (add-to-list 'default-frame-alist '(alpha 85 85)) (put
'dired-find-alternate-file 'disabled nil) (put 'upcase-region
'disabled nil)

