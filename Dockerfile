FROM php:8.2-apache

# Enable mod_rewrite
RUN a2enmod rewrite

# Set DirectoryIndex
RUN echo "DirectoryIndex index.php index.html" >> /etc/apache2/apache2.conf

# Allow overrides
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' \
    /etc/apache2/apache2.conf

EXPOSE 80

