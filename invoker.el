(defun invoker-reload (arg command)
  (interactive "p\nMCommand to reload: ")
  (start-process "invoker" "*invoker*" "invoker" "reload" command))

(defun invoker-start (arg command)
  (interactive "p\nMCommand to start: ")
  (start-process "invoker" "*invoker*" "invoker" "add" command))

(defun invoker-remove (arg command)
  (interactive "p\nMCommand to stop: ")
  (start-process "invoker" "*invoker*" "invoker" "remove" command))

(provide 'invoker)
