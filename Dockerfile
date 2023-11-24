# Use an official Ruby runtime as a parent image
FROM ruby:2.7

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in Gemfile
RUN gem install bundler && bundle install

# Make port 4000 available to the world outside this container
EXPOSE 4000

# Define environment variable
ENV JEKYLL_ENV=production

# Run bundle exec jekyll serve when the container launches
CMD ["bundle", "exec", "jekyll", "serve"]
