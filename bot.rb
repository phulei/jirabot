#!/usr/bin/env ruby

require 'cinch'
require 'nokogiri'
require 'open-uri'
require 'configatron'


require_relative 'plugins/autoop.rb'
require_relative 'plugins/jira.rb'
require_relative 'config'


jirabot = Cinch::Bot.new do
  configure do |c|
    c.server = configatron.irc.server
    c.channels = configatron.jirabot.channels
    c.nick = configatron.jirabot.nick
    c.plugins.plugins = configatron.jirabot.plugins

  end
end
jirabot.start