require 'rubygems'
require 'spec/rake/spectask'

Spec::Rake::SpecTask.new do |t|
  t.ruby_opts = ['-rtest/unit']
  t.spec_files = FileList[File.dirname(__FILE__) + '/../spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new("spec:api") do |t|
  t.ruby_opts = ['-rtest/unit']
  t.spec_files = FileList[File.dirname(__FILE__) + '/../spec/api/**/*_spec.rb']
end