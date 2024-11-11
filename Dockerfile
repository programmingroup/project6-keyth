# Imagen base de Ruby
FROM ruby:3.2

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el Gemfile y el Gemfile.lock (si existe) al contenedor
COPY Gemfile* ./

# Instalar Bundler
RUN gem install bundler

# Instalar las dependencias del Gemfile
RUN bundle install

# Copiar el resto de los archivos de la aplicación al contenedor
COPY . .

# Exponer el puerto en el que correrá Sinatra
EXPOSE 4567

# Iniciar la aplicación
CMD ["ruby", "app.rb"]
