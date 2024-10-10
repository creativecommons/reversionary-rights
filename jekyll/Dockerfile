# Use the official Ruby image as a base
FROM ruby:3.1.6

# Install dependencies for Jekyll
RUN apt-get update && apt-get install -y \
  build-essential \
  libffi-dev \
  libgdbm-dev \
  libsqlite3-dev \
  libssl-dev \
  libreadline-dev \
  zlib1g-dev

# Install Bundler and Jekyll
RUN gem install bundler:2.5.20
RUN gem install jekyll

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy Gemfile and install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy site files
COPY . .

# Expose port
EXPOSE 4000

# Serve Jekyll
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch"]