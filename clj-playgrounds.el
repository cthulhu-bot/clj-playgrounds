;;; clj-playgrounds.el --- Some awesome shit

;; Author: Joshua Stupplebeen <jpstup@gmail.com>
;; Maintainer: Joshua Stupplebeen <jpstup@gmail.com>
;; URL: http://github.com/cthulhu-bot/clj-playgrounds
;; Version: 0.1
;; Keywords: clojure, playgroud, repl

;;; Commentary:

;; Provides a playground to run clojure code-conversion-map-vector

(defgroup clj-playgrounds nil
  "Some awesome shit"
  :prefix "clj-playgrounds-"
  :group 'applications
  :link '(url-link :tag "Github" "https://github.com/cthulhu-bot/clj-playgrounds")
  :link '(emacs-commentary-link :tag "Commentary" "cider"))

(defun foo ()
  "Prints foo"
  (interactive)
  (print "Hello foo"))

(global-set-key (kbd "C-x C-]") (print "wtf"))

(defun append-to-buffer (buffer start end)
  (interactive "BAppend to buffer: \nr")
  (let ((oldbuf (current-buffer)))
    (with-current-buffer (get-buffer-create buffer)
      (insert-buffer-substring oldbuf start end))))

(defun create-and-switch-to-buffer (buffer-name)
  (setq new-buffer (get-buffer-create buffer-name))
  (switch-to-buffer-other-window new-buffer))

(create-and-switch-to-buffer "new-buffer")
