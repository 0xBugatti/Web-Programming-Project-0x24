FROM ubuntu:latest

# Set environment variables to avoid prompts and for better apt performance
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages: curl, gnupg, git, nodejs, npm
RUN apt update && apt install -y \
    git \
    unzip \
    curl \
    libzip-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    mbstring \
    mysqli \
    pdo pdo_mysql \
    xml \
    apache2 \  
    php \
    libapache2-mod-php \
    php-mysql \
    php-cli \
    php-curl \
    php-json \
    php-mbstring \
    php-xml \
    php-zip 

# Set /app as the Working Directory on Docker filesystem
WORKDIR /app
COPY . .

EXPOSE 8080
RUN chmod +x dbinstall.sh && ./dbinstall.sh
CMD ["php -S 0.0.0.0:8080"]
