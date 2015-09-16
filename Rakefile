require "bundler/gem_tasks"
require 'rake/clean'
require 'rake_n_bake'
require 'rubocop/rake_task'

RuboCop::RakeTask.new

task default: [
  :clean,
  :"bake:code_quality:all",
  :"bake:rspec",
  :"bake:coverage:check_specs",
  :"bake:ok"
]
