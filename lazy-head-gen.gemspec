# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "lazy-head-gen"
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stuart Chinery"]
  s.date = "2012-07-05"
  s.description = "lazy-head-gen provides some extra generators for the excellent Padrino framework."
  s.email = "stuart.chinery@headlondon.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lazy-head-gen.gemspec",
    "lib/lazy-head-gen.rb",
    "lib/lazy-head-gen/admin_controller_test.rb",
    "lib/lazy-head-gen/bootstrapped_admin_app.rb",
    "lib/lazy-head-gen/bootstrapped_admin_page.rb",
    "lib/lazy-head-gen/scaffold.rb",
    "lib/lazy-head-gen/templates/admin_app/account/activerecord.rb.tt",
    "lib/lazy-head-gen/templates/admin_app/account/seeds.rb.tt",
    "lib/lazy-head-gen/templates/admin_app/app.rb.tt",
    "lib/lazy-head-gen/templates/admin_app/app/controllers/base.rb",
    "lib/lazy-head-gen/templates/admin_app/app/controllers/sessions.rb.tt",
    "lib/lazy-head-gen/templates/admin_app/app/helpers/application_helper.rb",
    "lib/lazy-head-gen/templates/admin_app/assets/css/bootstrap-responsive.css",
    "lib/lazy-head-gen/templates/admin_app/assets/css/bootstrap-responsive.min.css",
    "lib/lazy-head-gen/templates/admin_app/assets/css/bootstrap.css",
    "lib/lazy-head-gen/templates/admin_app/assets/css/bootstrap.min.css",
    "lib/lazy-head-gen/templates/admin_app/assets/ico/apple-touch-icon-114-precomposed.png",
    "lib/lazy-head-gen/templates/admin_app/assets/ico/apple-touch-icon-144-precomposed.png",
    "lib/lazy-head-gen/templates/admin_app/assets/ico/apple-touch-icon-57-precomposed.png",
    "lib/lazy-head-gen/templates/admin_app/assets/ico/apple-touch-icon-72-precomposed.png",
    "lib/lazy-head-gen/templates/admin_app/assets/ico/favicon.ico",
    "lib/lazy-head-gen/templates/admin_app/assets/img/glyphicons-halflings-white.png",
    "lib/lazy-head-gen/templates/admin_app/assets/img/glyphicons-halflings.png",
    "lib/lazy-head-gen/templates/admin_app/assets/js/bootstrap.js",
    "lib/lazy-head-gen/templates/admin_app/assets/js/bootstrap.min.js",
    "lib/lazy-head-gen/templates/admin_app/assets/js/jquery-min.js",
    "lib/lazy-head-gen/templates/admin_app/assets/js/jquery-ujs.js",
    "lib/lazy-head-gen/templates/admin_app/assets/js/jquery.js",
    "lib/lazy-head-gen/templates/admin_app/erb/app/base/index.erb.tt",
    "lib/lazy-head-gen/templates/admin_app/erb/app/layouts/application.erb.tt",
    "lib/lazy-head-gen/templates/admin_app/erb/app/sessions/new.erb.tt",
    "lib/lazy-head-gen/templates/admin_app/erb/page/_form.erb.tt",
    "lib/lazy-head-gen/templates/admin_app/erb/page/edit.erb.tt",
    "lib/lazy-head-gen/templates/admin_app/erb/page/index.erb.tt",
    "lib/lazy-head-gen/templates/admin_app/erb/page/new.erb.tt",
    "lib/lazy-head-gen/templates/admin_app/page/controller.rb.tt",
    "lib/lazy-head-gen/templates/admin_controller_test/admin_controller_test.rb.tt",
    "lib/lazy-head-gen/templates/scaffold/blueprints.rb.tt",
    "lib/lazy-head-gen/templates/scaffold/controller.rb.tt",
    "lib/lazy-head-gen/templates/scaffold/controller_test.rb.tt",
    "lib/lazy-head-gen/templates/scaffold/helper.rb.tt",
    "lib/lazy-head-gen/templates/scaffold/model.rb.tt",
    "lib/lazy-head-gen/templates/scaffold/model_test.rb.tt",
    "lib/lazy-head-gen/templates/scaffold/view.erb.tt",
    "test/helper.rb",
    "test/lazy-head-gen/test_admin_controller_test.rb",
    "test/lazy-head-gen/test_bootstrapped_admin_app_generator.rb",
    "test/lazy-head-gen/test_bootstrapped_admin_page_generator.rb",
    "test/lazy-head-gen/test_scaffold.rb",
    "test/load_paths.rb",
    "test/test_lazy-head-gen.rb"
  ]
  s.homepage = "http://github.com/sleepingstu/lazy-head-gen"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.19"
  s.summary = "Some extra generators for the excellent Padrino, using ActiveRecord and MiniTest."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<padrino>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<turn>, ["~> 0.9.5"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_development_dependency(%q<json>, [">= 1.5.3"])
      s.add_development_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_development_dependency(%q<grit>, [">= 2.4.1"])
      s.add_development_dependency(%q<rack>, [">= 1.3.0"])
      s.add_development_dependency(%q<rake>, [">= 0.8.7"])
      s.add_development_dependency(%q<rack-test>, [">= 0.5.0"])
      s.add_development_dependency(%q<fakeweb>, [">= 1.2.8"])
      s.add_development_dependency(%q<webrat>, [">= 0.5.1"])
      s.add_development_dependency(%q<haml>, [">= 2.2.22"])
      s.add_development_dependency(%q<erubis>, [">= 2.7.0"])
      s.add_development_dependency(%q<slim>, [">= 0.9.2"])
      s.add_development_dependency(%q<uuid>, [">= 2.3.1"])
      s.add_development_dependency(%q<builder>, [">= 2.1.2"])
      s.add_development_dependency(%q<bcrypt-ruby>, [">= 0"])
      s.add_development_dependency(%q<system_timer>, [">= 1.0"])
      s.add_development_dependency(%q<jruby-openssl>, [">= 0"])
      s.add_development_dependency(%q<mocha>, ["~> 0.10.0"])
      s.add_development_dependency(%q<lumberjack>, [">= 0"])
    else
      s.add_dependency(%q<padrino>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<turn>, ["~> 0.9.5"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_dependency(%q<json>, [">= 1.5.3"])
      s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_dependency(%q<grit>, [">= 2.4.1"])
      s.add_dependency(%q<rack>, [">= 1.3.0"])
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<rack-test>, [">= 0.5.0"])
      s.add_dependency(%q<fakeweb>, [">= 1.2.8"])
      s.add_dependency(%q<webrat>, [">= 0.5.1"])
      s.add_dependency(%q<haml>, [">= 2.2.22"])
      s.add_dependency(%q<erubis>, [">= 2.7.0"])
      s.add_dependency(%q<slim>, [">= 0.9.2"])
      s.add_dependency(%q<uuid>, [">= 2.3.1"])
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<bcrypt-ruby>, [">= 0"])
      s.add_dependency(%q<system_timer>, [">= 1.0"])
      s.add_dependency(%q<jruby-openssl>, [">= 0"])
      s.add_dependency(%q<mocha>, ["~> 0.10.0"])
      s.add_dependency(%q<lumberjack>, [">= 0"])
    end
  else
    s.add_dependency(%q<padrino>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<turn>, ["~> 0.9.5"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<yard>, ["~> 0.6.0"])
    s.add_dependency(%q<json>, [">= 1.5.3"])
    s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
    s.add_dependency(%q<grit>, [">= 2.4.1"])
    s.add_dependency(%q<rack>, [">= 1.3.0"])
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<rack-test>, [">= 0.5.0"])
    s.add_dependency(%q<fakeweb>, [">= 1.2.8"])
    s.add_dependency(%q<webrat>, [">= 0.5.1"])
    s.add_dependency(%q<haml>, [">= 2.2.22"])
    s.add_dependency(%q<erubis>, [">= 2.7.0"])
    s.add_dependency(%q<slim>, [">= 0.9.2"])
    s.add_dependency(%q<uuid>, [">= 2.3.1"])
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<bcrypt-ruby>, [">= 0"])
    s.add_dependency(%q<system_timer>, [">= 1.0"])
    s.add_dependency(%q<jruby-openssl>, [">= 0"])
    s.add_dependency(%q<mocha>, ["~> 0.10.0"])
    s.add_dependency(%q<lumberjack>, [">= 0"])
  end
end

