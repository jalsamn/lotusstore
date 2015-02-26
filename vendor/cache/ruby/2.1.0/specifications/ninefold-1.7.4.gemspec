# -*- encoding: utf-8 -*-
# stub: ninefold 1.7.4 ruby lib
# stub: ext/extconf.rb

Gem::Specification.new do |s|
  s.name = "ninefold"
  s.version = "1.7.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Yehuda Katz", "Nikolay Nemshilov"]
  s.date = "2014-09-12"
  s.description = "Ninefold CLI"
  s.email = ["wycats@gmail.com"]
  s.executables = ["ninefold"]
  s.extensions = ["ext/extconf.rb"]
  s.files = ["bin/ninefold", "ext/extconf.rb"]
  s.homepage = "http://ninefold.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "The official ninefold CLI"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, ["~> 0.19"])
      s.add_runtime_dependency(%q<netrc>, ["~> 0.7"])
      s.add_runtime_dependency(%q<json>, ["~> 1.7"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.8"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, ["~> 10.3"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 4.2"])
    else
      s.add_dependency(%q<thor>, ["~> 0.19"])
      s.add_dependency(%q<netrc>, ["~> 0.7"])
      s.add_dependency(%q<json>, ["~> 1.7"])
      s.add_dependency(%q<faraday>, ["~> 0.8"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, ["~> 10.3"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 4.2"])
    end
  else
    s.add_dependency(%q<thor>, ["~> 0.19"])
    s.add_dependency(%q<netrc>, ["~> 0.7"])
    s.add_dependency(%q<json>, ["~> 1.7"])
    s.add_dependency(%q<faraday>, ["~> 0.8"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, ["~> 10.3"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 4.2"])
  end
end
