;; 换到清华源, 但有时会产生签名问题, 这时候就暂时换回官方源
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

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
   '("3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" default))
 '(package-selected-packages
   '(graphviz-dot-mode company-graphviz-dot graphviz-dot-indent-mode ob-dot ob-http ob-graphql ob-shell ob-C ob-go lsp-ui gnu-elpa gnu-elpa-keyring-update lsp-mode htmlize atomic-chrome iedit org-bullets zenburn-theme use-package dracula-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))


(put 'erase-buffer 'disabled nil)
