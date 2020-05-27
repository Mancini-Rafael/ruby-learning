FROM ruby:latest

ADD Gemfile* /learning/
WORKDIR /learning
ADD . /learning
RUN gem install bundler
RUN bundle install


RUN bundle check || bundle install --jobs 20 --retry 5
ENTRYPOINT ["./docker_entrypoint.sh"]