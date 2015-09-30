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

(defun create-and-switch-to-buffer (buffer-name)
  (interactive)
  (setq new-buffer (get-buffer-create buffer-name))
  (switch-to-buffer new-buffer))

(defun split-current-and-switch-to-window ()
  (interactive)
  (setq new-window (split-window-right))
  (select-window new-window))

(defun playground-init ()
  (interactive)
  (split-current-and-switch-to-window)
  (create-and-switch-to-buffer "clj-playground"))

(defun append-to-buffer (buffer start end)
  (interactive "BAppend to buffer: \nr")
  (let ((oldbuf (current-buffer)))
    (with-current-buffer (get-buffer-create buffer)
      (insert-buffer-substring oldbuf start end))))

(global-set-key (kbd "C-x C-]")
                (lambda () (interactive) (playground-init)))

(defun write-test-output ()
  (interactive)
  (playground-init)
  (switch-to-buffer "clj-playground")
  (print "wtf"))

(selected-window)
(selected-frame)
(window-total-width (selected-window))
(window-resize (selected-window) 50)
