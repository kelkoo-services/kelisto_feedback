$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kelisto_feedback/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kelisto_feedback"
  s.version     = KelistoFeedback::VERSION
  s.authors     = ["Kelisto Dev Team"]
  s.email       = ["services.tech@kelisto.es"]
  s.homepage    = "https://github.com/kelkoo-services/kelisto_feedback"
  s.summary     = "Kelisto's feedback button and submit form"
  s.description = "Kelisto's feedback button and submit form"

  s.files = `git ls-files`.split("\n")

  s.add_runtime_dependency "nokogiri"
  s.add_runtime_dependency "premailer"
  s.add_runtime_dependency "premailer-rails"
end
