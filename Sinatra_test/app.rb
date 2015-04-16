require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

get '/' do
@title = 'All about chaos'
  haml :index
 end

get '/about' do
@title = 'About black mage'
	haml :about
end
get '/contact' do
@title  = 'Invoke me'
	haml :contacts
end