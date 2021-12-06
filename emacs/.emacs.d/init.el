(setq x-alt-keysym 'meta)
;; 换到清华源, 但有时会产生签名问题, 这时候就暂时换回官方源
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(add-to-list 'load-path "~/.emacs.d/contrib/")

;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; (add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/"))

;; 设置基础包
(package-initialize) ;; You might already have this line

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; 执行org-babel
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

;; 设置默认窗口大小
(when window-system (set-frame-size (selected-frame) 150 50))

;; 下面是自动生成的内容
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "78c4238956c3000f977300c8a079a3a8a8d4d9fee2e68bad91123b58a4aa8588" "4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "76b4632612953d1a8976d983c4fdf5c3af92d216e2f87ce2b0726a1f37606158" default))
 '(org-agenda-files nil)
 '(package-selected-packages
   '(yaml-mode exec-path-from-shell floobits gruvbox-theme ample-theme twilight-bright-theme doom-modeline smart-mode-line powerline ox-reveal graphviz-dot-mode company-graphviz-dot graphviz-dot-indent-mode ob-dot ob-http ob-graphql ob-shell ob-C ob-go lsp-ui gnu-elpa gnu-elpa-keyring-update lsp-mode htmlize atomic-chrome iedit org-bullets zenburn-theme use-package dracula-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))


(put 'erase-buffer 'disabled nil)


