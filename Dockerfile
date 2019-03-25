FROM ruby:2.3.8-alpine

RUN apk add --no-cache \
        nodejs \
        build-base \
        sqlite-dev \
        tzdata

WORKDIR /app

COPY Gemfile Gemfile.lock ./ 
RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . ./

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
