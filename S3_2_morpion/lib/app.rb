require 'bundler'

Bundler.require

$:.unshift File.expand_path("../lib", __FILE__)

require 'board_case'
require 'board'
require 'show'
require 'player'
require 'game'
require 'application'

Application.new.perform

binding.pry 