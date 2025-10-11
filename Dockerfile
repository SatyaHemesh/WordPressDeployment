# Use the official WordPress image as the base
FROM wordpress:latest

# Set environment variables (optional, but recommended)
ENV WORDPRESS_DB_HOST=db:3306
ENV WORDPRESS_DB_USER=wordpress_user
ENV WORDPRESS_DB_PASSWORD=wordpress_password
ENV WORDPRESS_DB_NAME=wordpress_db

# Copy any custom WordPress files (themes, plugins, uploads)
# Optional: only if you have local customizations
# COPY ./custom-content/ /var/www/html/wp-content/

# Expose port 80 (default HTTP)
EXPOSE 80

# Run Apache in the foreground (default command in official image)
CMD ["apache2-foreground"]
