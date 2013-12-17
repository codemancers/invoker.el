(defun invoker-reload (arg command)
  (interactive "p\nMCommand to reload: ")
  (start-process "invoker" "*invoker*" "invoker" "reload" command))

(defun invoker-start (arg command)
  (interactive "p\nMCommand to start: ")
  (start-process "invoker" "*invoker*" "invoker" "add" command))

(defun invoker-remove (arg command)
  (interactive "p\nMCommand to stop: ")
  (start-process "invoker" "*invoker*" "invoker" "remove" command))

(defun invoker-list ()
  (interactive)
  (let (
        (invoker-list-buffer (get-buffer-create "*invoker list*"))
        )
    (switch-to-buffer invoker-list-buffer)
    (call-process "invoker" nil invoker-list-buffer "invoker" "list")
    (ansi-color-apply-on-region (point-min) (point-max))
    (beginning-of-buffer)
    ))


(provide 'invoker)
