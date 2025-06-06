# Use PHP 8.2 with Apache server
FROM php:8.2-apache

# Copy all project files into Apache web root
COPY . /var/www/html/

# Optional: Enable Apache mod_rewrite (useful for clean URLs)
RUN a2enmod rewrite

EXPOSE 80