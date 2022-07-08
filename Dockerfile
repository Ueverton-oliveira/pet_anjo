FROM ruby:3.1.1

# add nodejs and yarn dependencies for the frontend
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Install our dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
nodejs yarn build-essential libpq-dev imagemagick git-all nano

# install bundler
RUN gem install bundler

# Arrow our path
ENV INSTALL_PATH /pet_anjo

# Create our directory
RUN mkdir -p $INSTALL_PATH

# Set our path as the main directory
WORKDIR $INSTALL_PATH

# Copy our Gemfile into the container
COPY Gemfile ./

# Set the path for the Gems
ENV BUNDLE_PATH /gems

# Copy our code into the container
COPY . .