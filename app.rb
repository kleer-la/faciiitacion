# encoding: utf-8
require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'pony'

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

# http://stackoverflow.com/questions/26265358/connection-refused-when-using-pony-mail-sinatra
post '/contacto/facilitacion' do
    Pony.mail :to => 'juan.gabardini@kleer.la',
            :from => 'hola@kleer.la',
            :subject => 'Howdy, Partna!',
            :body => "Nombre: " + params[:fname] + params[:lname]
end
