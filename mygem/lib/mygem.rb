require "mygem/version"
require 'net/http'
require 'net/https'
require 'uri'
require 'httparty'
require 'pp'

module Mygem
#include HTTParty
  def self.get_friends_for(username)
    Twitter.get_username_data(username)
  end
end

class Twitter
  include HTTParty
  base_uri 'http://api.twitter.com/1/'
  default_params :output => 'json'
  format :json

  def self.get_username_data(username)
    r = get("/statuses/friends.json?screen_name=#{username}")
    r.parsed_response.each do |friend|
      puts friend["name"]
    end
    return r.parsed_response.length
  end
  
end