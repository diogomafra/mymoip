# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mymoip"
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Irio Irineu Musskopf Junior"]
  s.date = "2013-06-13"
  s.description = "Provides a implementation of MoIP's transparent checkout."
  s.email = "irio.musskopf@caixadeideias.com.br"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".travis.yml",
    "CHANGELOG.md",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "lib/mymoip.rb",
    "lib/mymoip/commission.rb",
    "lib/mymoip/credit_card.rb",
    "lib/mymoip/credit_card_payment.rb",
    "lib/mymoip/exceptions.rb",
    "lib/mymoip/formatter.rb",
    "lib/mymoip/instruction.rb",
    "lib/mymoip/json_parser.rb",
    "lib/mymoip/payer.rb",
    "lib/mymoip/request.rb",
    "lib/mymoip/requests/payment_request.rb",
    "lib/mymoip/requests/transparent_request.rb",
    "mymoip.gemspec",
    "test/fixtures/fixture.rb",
    "test/fixtures/vcr_cassettes/payment_request.yml",
    "test/fixtures/vcr_cassettes/transparent_request.yml",
    "test/fixtures/vcr_cassettes/transparent_request_with_commissions.yml",
    "test/live_test.rb"
  ]
  s.homepage = "http://github.com/Irio/mymoip"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "MoIP transactions in a gem to call your own."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_runtime_dependency(%q<activemodel>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<turn>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
    else
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<activemodel>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<turn>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<vcr>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
    end
  else
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<activemodel>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<turn>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<vcr>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
  end
end

