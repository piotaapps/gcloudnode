FROM google/cloud-sdk
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get install -y \
    -q --no-install-recommends \
    git \
    ssh \
    apt-utils \
    curl \
    php-cli \
    php-mbstring \
    unzip \
    vim \
    sudo \
    build-essential \
    libssl-dev \
    phantomjs \
&& rm -rf /var/lib/apt/lists/*