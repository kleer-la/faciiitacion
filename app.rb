# encoding: utf-8
require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'

get '/' do
	erb :index
end

get '/facilitacion-grafica' do
	erb :fg
end

get '/innovacion-creativiad' do
	erb :innovacion-creatividad
end

get '/planificacion-estrategica' do
	erb :planificacion-estrategica
end

get 'dinamicas-eventos' do
	erb :dinamicas-eventos
end
