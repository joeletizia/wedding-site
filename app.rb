require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/event-info' do
  haml :event_info
end

get '/images' do
  haml :images
end

get '/contact' do
  haml :contact
end

get '/day-of-information' do
  haml :day_of_information
end

get '/registry' do
  haml :registry
end
