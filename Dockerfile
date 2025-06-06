# Use PHP 8.2 with Apache server
FROM php:8.2-apache

# Copy all project files into Apache web root
COPY . /var/www/html/

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Expose port 80 to Railway
EXPOSE 80

# Explicitly start Apache
CMD ["apache2-foreground"]
