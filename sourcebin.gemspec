# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "./lib/hastebin/version"

Gem::Specification.new do |s|
  s.name        = "sourcebin"
  s.version     = Sourcebin::VERSION
  s.authors     = ["Astin"]
  s.email       = [""]
  s.homepage    = "https://rubygems.org/gems/discloud-status"
  s.summary     = "CLI tool that works with sourceb.in ."
  s.description = ""
  #s.executables   = ["sourcebin"]
  s.license     = "MIT"
  s.require_paths = ['lib']
  s.files         = ["lib/sourcebin.rb"]
  s.metadata = {
    'source_code_uri'   => 'https://github.com/astindev/hastebin/',
    'homepage_uri'      => 'https://rubygems.org/gems/hastebin',
    'changelog_uri'     => 'https://github.com/astindev/hastebin/blob/master/CHANGELOG.md',
    'bug_tracker_uri'   => 'https://github.com/astin/hastebin/issues',
    'documentation_uri' => 'https://github.com/astindev/hastebin/'
  }
  s.add_dependency 'colorize'
  s.add_dependency 'net'
  s.add_dependency 'json'
  s.add_dependency 'uri'
end
