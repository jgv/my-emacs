(setq el-get-sources
      '((:name ruby-mode
               :type elpa
               :load "ruby-mode.el"
               :after (progn (ruby-mode-hook)))
        (:name inf-ruby :type elpa)
        (:name ruby-compilation :type elpa)
        (:name php-mode
               :type git
               :url "git://github.com/ejmr/php-mode.git"
               :features php-mode
               :after (progn (php-mode-hook)))
        (:name css-mode
               :type elpa
               :after (progn (css-mode-hook)))
        (:name scss-mode
               :type git
               :url "git://github.com/antonj/scss-mode.git"
               :after (progn (scss-mode-hook)))
        (:name textmate
               :type git
               :url "git://github.com/defunkt/textmate.el"
               :load "textmate.el"
               :after (progn (textmate-hook)))
        (:name magit
               :after (progn (magit-hook)))
        (:name yaml-mode
               :type git
               :url "git://github.com/yoshiki/yaml-mode.git"
               :features yaml-mode
               :after (progn (yaml-mode-hook)))
        (:name rhtml
               :type git
               :url "git://github.com/eschulte/rhtml.git"
               :features rhtml-mode
               :after (progn (rhtml-mode-hook)))
        (:name centered-cursor-mode
               :type git
               :url "git://github.com/emacsmirror/centered-cursor-mode.git"
               :load "centered-cursor-mode.el"
               :after (progn (centered-cursor-hook)))
        (:name rainbow-mode
               :type git
               :url "git://github.com/emacsmirror/rainbow-mode.git"
               :features rainbow-mode
               :after (progn (rainbow-mode-hook)))
        (:name smart-tab
               :type git
               :url "git://github.com/genehack/smart-tab.git"
               :load "smart-tab.el"
               :after (progn (smart-tab-hook)))
        (:name textile-mode
               :type git
               :url "git://github.com/emacsmirror/textile-mode.git"
               :features textile-mode
               :after (progn (textile-mode-hook)))
        (:name markdown-mode
               :type git
               :url "git://jblevins.org/git/markdown-mode.git"
               :features markdown-mode
               :after (progn (markdown-mode-hook)))
        (:name coffee-mode
               :type git
               :url "git://github.com/defunkt/coffee-mode.git"
               :features coffee-mode
               :after (progn (coffee-mode-hook)))
        (:name yasnippet
               :type git
               :url "git://github.com/capitaomorte/yasnippet.git"
               :features yasnippet
               :after (progn (yasnippet-hook)))
        (:name io-mode
               :type git
               :url "git://github.com/superbobry/io-mode.git"
               :features io-mode
               :after (progn (io-mode-hook)))
        (:name io-moode-inf
               :type git
               :url "git://github.com/slackorama/io-emacs.git"
               :features io-mode-inf
               :after (progn (io-mode-inf-hook)))
        (:name ethan-wspace
               :after (progn (global-ethan-wspace-mode 1)))
        (:name js-comint
               :type git
               :url "git://github.com/user-1/js-comint.git"
               :after (progn (js-comint-hook)))
        (:name tree-mode ;; dependency of dir-tree
               :type git
               :url "git://github.com/emacsmirror/tree-mode.git"
               :after (progn (require 'tree-mode)))
        (:name windata
               :type git
               :url "git://github.com/emacsmirror/windata.git"
               :after (progn (require 'windata)))
        (:name dir-tree
               :type git
               :url "git://github.com/zkim/emacs-dirtree.git"
               :after (progn (require 'dirtree)))))

(setq my-packages
      (append '(el-get) (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)
