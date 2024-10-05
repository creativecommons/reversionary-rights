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

# Install Bundler and Jekyll separately
RUN gem install bundler:2.5.20
RUN gem install jekyll

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock (if exists)
COPY Gemfile* ./

# Install the Jekyll gems using bundler
RUN bundle install

# Copy the rest of your site files
COPY . .

#RUN ./scripts/overwrite-data.sh && ./scripts/build.sh

# Expose the port Jekyll will run on
EXPOSE 4000

# Command to run Jekyll
#CMD ["jekyll", "serve", "--host", "0.0.0.0", "--watch"]
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch"]
#CMD ["bundle", "exec", "jekyll", "serve", "--source", "jekyll", "--host", "0.0.0.0", "--port", "4000", "--watch"]

