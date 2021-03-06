;;; gist-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (gist-fetch gist-region-or-buffer-private gist-region-or-buffer
;;;;;;  gist-buffer-private gist-buffer gist-region-private gist-region)
;;;;;;  "gist" "gist.el" (19372 38732))
;;; Generated autoloads from gist.el

(autoload (quote gist-region) "gist" "\
Post the current region as a new paste at gist.github.com
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn BEGIN END &optional PRIVATE)" t nil)

(autoload (quote gist-region-private) "gist" "\
Post the current region as a new private paste at gist.github.com
Copies the URL into the kill ring.

\(fn BEGIN END)" t nil)

(autoload (quote gist-buffer) "gist" "\
Post the current buffer as a new paste at gist.github.com.
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn &optional PRIVATE)" t nil)

(autoload (quote gist-buffer-private) "gist" "\
Post the current buffer as a new private paste at gist.github.com.
Copies the URL into the kill ring.

\(fn)" t nil)

(autoload (quote gist-region-or-buffer) "gist" "\
Post either the current region, or if mark is not set, the current buffer as a new paste at gist.github.com
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn &optional PRIVATE)" t nil)

(autoload (quote gist-region-or-buffer-private) "gist" "\
Post either the current region, or if mark is not set, the current buffer as a new private paste at gist.github.com
Copies the URL into the kill ring.

\(fn)" t nil)

(autoload (quote gist-fetch) "gist" "\
Fetches a Gist and inserts it into a new buffer
If the Gist already exists in a buffer, switches to it

\(fn ID)" t nil)

;;;***

;;;### (autoloads nil nil ("gist-pkg.el") (19372 38733 32295))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; gist-autoloads.el ends here
