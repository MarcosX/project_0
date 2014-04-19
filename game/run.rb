#!/usr/bin/env ruby
require 'chingu'
require 'pry'
include Gosu
include Chingu
require_relative 'gui/game_window'

GameWindow.new.show
