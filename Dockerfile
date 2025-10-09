# Use the official Ruby image as base
FROM ruby:3.1-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile* ./

# Install Ruby dependencies
RUN bundle install

# Copy the rest of the application
COPY . .

# Expose port 4000 (Jekyll's default port)
EXPOSE 4000

# Command to run Jekyll with live reload and host binding
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--force_polling"]
