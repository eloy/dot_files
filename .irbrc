#!/usr/bin/env ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

# Break out of the Bundler jail
# from https://github.com/ConradIrwin/pry-debundle/blob/master/lib/pry-debundle.rb
if defined? Bundler
  Gem.post_reset_hooks.reject! { |hook| hook.source_location.first =~ %r{/bundler/} }
  Gem::Specification.reset
  load 'rubygems/custom_require.rb'
end

# if defined? Rails
#   begin
#    require 'hirb'
#    Hirb.enable
#  rescue LoadError
#  end
#end


def my_hash
    {a: 'element_a', b: 'element_b', c: 'element_c', d: 'element_d'}
end

def my_hash_array
   [{id: 1, name: 'element 1', valid: true},
   {id: 2, name: 'element 2', valid: true},
   {id: 3, name: 'element 3', valid: true}]
end

# require 'irbtools/configure'
# Irbtools.add_package :more
# Irbtools.start
# require 'json'
