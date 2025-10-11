# Use the official WordPress image with Apache and PHP
FROM wordpress:latest

# Set Apache ServerName to suppress warnings
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Enable Apache rewrite module (needed for pretty permalinks)
RUN a2enmod rewrite

# Optional: Copy custom WordPress files if you have local themes/plugins/uploads
# COPY ./custom-content/ /var/www/html/wp-content/

# Expose the default HTTP port
EXPOSE 80

# Start Apache in the foreground (official image default)
CMD ["apache2-foreground"]
