(setq el-get-sources
      '((:name ruby-mode 
               :type elpa
               :load "ruby-mode.el"
               :after (lambda () (ruby-mode-hook)))
        (:name inf-ruby :type elpa)
        (:name ruby-compilation :type elpa)
        (:name css-mode 
               :type elpa
               :after (lambda () (css-mode-hook)))
        (:name textmate
               :type git
               :url "git://github.com/defunkt/textmate.el"
               :load "textmate.el"
               :after (lambda () (textmate-hook)))
        (:name magit 
               :after (lambda () (magit-hook)))
        (:name rvm
               :type git
               :url "git://github.com/djwhitt/rvm.el.git"
               :load "rvm.el"
               :compile ("rvm.el")
               :after (lambda() (rvm-use-default)))
        (:name yaml-mode
               :type git
               :url "git://github.com/yoshiki/yaml-mode.git"
               :features yaml-mode
               :after (lambda () (yaml-mode-hook)))
        (:name rhtml
               :type git
               :url "git://github.com/eschulte/rhtml.git"
               :features rhtml-mode
               :after (lambda () (rhtml-mode-hook)))
        (:name centered-cursor-mode
               :type git
               :url "git://github.com/emacsmirror/centered-cursor-mode.git"
               :load "centered-cursor-mode.el"
               :after (lambda () (centered-cursor-hook)))
        (:name rainbow-mode
               :type git
               :url "git://github.com/emacsmirror/rainbow-mode.git"
               :features rainbow-mode
               :after (lambda () (rainbow-mode-hook)))
        (:name smart-tab
               :type git
               :url "git://github.com/genehack/smart-tab.git"
               :load "smart-tab.el"
               :after (lambda () (smart-tab-hook)))
        (:name textile-mode
               :type git
               :url "git://github.com/emacsmirror/textile-mode.git"
               :features textile-mode
               :after (lambda () (textile-mode-hook)))
        (:name coffee-mode
               :type git
               :url "git://github.com/defunkt/coffee-mode.git"
               :features coffee-mode
               :after (lambda () (coffee-mode-hook)))))

(setq my-packages
      (append '(el-get) (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)
