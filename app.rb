# encoding: utf-8
require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'pony'

enable :sessions
set :session_secret, '*&(^weq3t'
get '/' do
	@f= {}
	[:email, :fname, :lname, :zone, :interest]. each {|s|	@f[s]= session[s]	}
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
	@f= params
	[:email, :fname, :lname, :zone, :interest]. each {|s|	session[s]= @f[s]	}

  Pony.mail :to => 'juan.gabardini@kleer.la',
          :from => 'hola@kleerer.la',
          :subject => 'Contacto desde sitio Facilitación',
          :body => "Nombre: " + @f[:fname] + '/' + @f[:lname] +
									"/ Email:" + @f[:email] + " / Ciudad: " + @f[:zone] +
									"/ Interés: " + @f[:interest]
	redirect to('/')
end
