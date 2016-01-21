# encoding: utf-8
require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'

get '/' do
	erb :index
end

get '/facilitacion-grafica' do
	erb :fg
end

get '/innovacion-creatividad' do
	erb :innovacion
end

get '/planificacion-estrategica' do
	erb :planificacion
end

get '/dinamicas-eventos' do
	erb :dinamicas
end

