require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require_relative 'lib/caesar_cypher'

get '/' do
  erb :encryption
end

get '/encryption' do
  @text = params["text"]
  @key = params["shift"].to_i
  @encoded_text = caesar_cypher(@text, @key)
  erb :encryption
end
