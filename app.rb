require 'sinatra'
require "sinatra/reloader"
require_relative 'caesar_cipher'

get '/' do
  erb :index, :locals => { :cipher => nil }
end

post '/cipher' do
  plain_text = params["plain_text"]
  offset = params["offset"].to_i
  cipher = caesar_cipher(plain_text, offset)
  erb :index, :locals => { :cipher => cipher }
end