FROM ruby:alpine

RUN sed -i 's/http\:\/\/dl-cdn.alpinelinux.org/http\:\/\/mirror.clarkson.edu/g' /etc/apk/repositories
RUN apk add --update \
    yarn build-base tzdata \
    postgresql-dev 

ENV BUNDLE_PATH /gems​

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle check || bundle install

COPY package.json yarn.lock ./
RUN yarn install --check-files

COPY . ./

ENTRYPOINT [ "./entrypoint.sh" ]
CMD ["bin/rails", "s", "-b", "0.0.0.0"]