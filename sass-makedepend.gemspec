require "./lib/sass/makedepend/version"

Gem::Specification.new do |s|
  s.name        = "sass-makedepend"
  s.licenses    = ["MIT"]
  s.version     = Sass::Makedepend::VERSION
  s.summary     = "makedepend(1) for SASS"
  s.description = "Generate GNU Make dependencies from Sass stylesheets"
  s.authors     = ["Nicolas Sanguinetti"]
  s.email       = ["contacto@nicolassanguinetti.info"]
  s.homepage    = "http://github.com/foca/sass-makedepend"
  s.executables = ["sass-makedepend"]

  s.files = Dir[
    "LICENSE",
    "README.md",
    "bin/sass-makedepend",
    "lib/sass/makedepend.rb",
    "lib/sass/makedepend/version.rb",
  ]

  s.add_dependency "sass", "~> 3.4"
  s.add_development_dependency "cutest", "~> 1.2"
end
