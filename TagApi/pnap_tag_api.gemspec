# -*- encoding: utf-8 -*-

=begin
#Tags API

#Tags are case-sensitive key-value pairs that simplify resource management. The Tag Manager API allows you to create and manage such tags to later assign them to related resources in your Bare Metal Cloud (through the respective resource apis) in order to group and categorize them.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#server-tag-manager-api' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/tag-manager/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "pnap_tag_api/version"

Gem::Specification.new do |s|
  s.name        = "pnap_tag_api"
  s.version     = TagApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["PhoenixNAP"]
  s.email       = ["support@phoenixnap.com"]
  s.homepage    = "https://phoenixnap.com/"
  s.summary     = "Tags API Ruby Gem"
  s.description = "Tags API Ruby Gem"
  s.license     = "MPL-2.0"
  s.required_ruby_version = ">= 2.4"
  s.metadata = { "source_code_uri" => "https://github.com/phoenixnap/ruby-sdk-bmc-poc" }

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
