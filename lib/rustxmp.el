(defun rustxmp ()
  "Replace buffer by rust-xmpfilter command"
  (interactive)
  (let ((saved-current-line (count-lines (point-min) (point)))
        (saved-current-column (current-column)))
    (shell-command-on-region (point-min) (point-max) "rust-xmpfilter" (current-buffer) t)
    (goto-line saved-current-line)
    (move-to-column saved-current-column)
    (recenter-top-bottom)))

;; rcodetools.el 参考
(defadvice comment-dwim (around rustxmp-hack activate)
  "If comment-dwim is successively called, add => mark."
  (if (and (eq major-mode 'rust-mode)
           (eq last-command 'comment-dwim)
           ;; TODO =>check
           )
      (insert "=>")
    ad-do-it))
;; To remove this advice.
;; (progn (ad-disable-advice 'comment-dwim 'around 'rustxmp-hack) (ad-update 'comment-dwim))
