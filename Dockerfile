FROM ubuntu:latest

# Set environment variables to avoid prompts and for better apt performance
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages: curl, gnupg, git, nodejs, npm
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    libzip-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    mariadb-server \
    apache2 \
    php \
    libapache2-mod-php \
    php-mysql \
    php-cli \
    php-curl \
    php-json \
    php-mbstring \
    php-xml \
    php-zip \

# Set /app as the Working Directory on Docker filesystem
WORKDIR /app
COPY . .
EXPOSE 8080
RUN chmod +x dbinit.sh 

ENTRYPOINT ["/bin/bash", "/app/dbinit.sh"]
CMD ["php -S 0.0.0.0:8080"]
