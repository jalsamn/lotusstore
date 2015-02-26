# -*- encoding: utf-8 -*-
# stub: spree_backend 2.4.2 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_backend"
  s.version = "2.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sean Schofield"]
  s.date = "2014-12-05"
  s.description = "Required dependency for Spree"
  s.email = "sean@spreecommerce.com"
  s.homepage = "http://spreecommerce.com"
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.requirements = ["none"]
  s.rubyforge_project = "spree_backend"
  s.rubygems_version = "2.2.2"
  s.summary = "backend e-commerce functionality for the Spree project."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_api>, ["= 2.4.2"])
      s.add_runtime_dependency(%q<spree_core>, ["= 2.4.2"])
      s.add_runtime_dependency(%q<jquery-rails>, ["~> 3.1.2"])
      s.add_runtime_dependency(%q<jquery-ui-rails>, ["~> 5.0.0"])
      s.add_runtime_dependency(%q<select2-rails>, ["~> 3.5.0"])
    else
      s.add_dependency(%q<spree_api>, ["= 2.4.2"])
      s.add_dependency(%q<spree_core>, ["= 2.4.2"])
      s.add_dependency(%q<jquery-rails>, ["~> 3.1.2"])
      s.add_dependency(%q<jquery-ui-rails>, ["~> 5.0.0"])
      s.add_dependency(%q<select2-rails>, ["~> 3.5.0"])
    end
  else
    s.add_dependency(%q<spree_api>, ["= 2.4.2"])
    s.add_dependency(%q<spree_core>, ["= 2.4.2"])
    s.add_dependency(%q<jquery-rails>, ["~> 3.1.2"])
    s.add_dependency(%q<jquery-ui-rails>, ["~> 5.0.0"])
    s.add_dependency(%q<select2-rails>, ["~> 3.5.0"])
  end
end
