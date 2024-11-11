require 'sinatra'
require 'webrick'

# Configuración para escuchar en todas las interfaces
set :bind, '0.0.0.0'
set :port, 4567

# Ruta para la página de inicio
get '/' do
  erb :index
end
