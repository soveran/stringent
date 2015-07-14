Gem::Specification.new do |s|
  s.name              = "stringent"
  s.version           = "0.0.1"
  s.summary           = "Generate a string with a target entropy"
  s.description       = "Generate a string with a target entropy"
  s.authors           = ["Michel Martens"]
  s.email             = ["michel@soveran.com"]
  s.homepage          = "https://github.com/soveran/stringent"
  s.license           = "MIT"

  s.files = `git ls-files`.split("\n")

  s.add_development_dependency "cutest"
end
