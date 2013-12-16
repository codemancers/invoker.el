(defun invoker-reload (arg command)
  (interactive "p\nMCommand to reload: ")
  (call-process "invoker" nil t nil "reload" command))

(defun invoker-start (arg command)
  (interactive "p\nMCommand to start: ")
  (call-process "invoker" nil t nil "add" command))

(defun invoker-remove (arg command)
  (interactive "p\nMCommand to stop: ")
  (call-process "invoker" nil t nil "remove" command))

(provide 'invoker)
