# Usa a imagem oficial PHP com apache
FROM php:8.2-apache

# Copia os arquivos da sua aaplicação para o diretório padrão do Apache
COPY . /var/www/html/

# Habilita módulos adicionais do Apache (opcional)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Exponha a porta padrão do Apache
EXPOSE 80
