require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/event-info' do
  haml :event_info, layout: false
end

get '/images' do
  haml :images
end

get '/contact' do
  haml :contact
end

get '/registry' do
  haml :registry, layout: false
end
