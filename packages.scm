;; packages.scm
(use-modules (guix packages) (guix build-system gnu) (guix download) (guix licenses))

(define-public hello-world
  (package
    (name "hello-world")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://gnu/hello/hello-" version ".tar.gz"))
              (sha256
               (base32 "0ssi1wpaf7plaswqqjwigppsg5fyh99vdlb9kzl7c9lng89ndq1i"))))
    (build-system gnu-build-system)
    (synopsis "Hello world example")
    (description "A trivial package for testing purposes.")
    (license license:expat)))
