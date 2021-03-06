FROM ruby:2

LABEL "name"="Cowsays Action Test"
LABEL "version"="1.0.0"

LABEL "com.github.actions.icon"="message-circle"
LABEL "com.github.actions.color"="mike"
LABEL "com.github.actions.name"="Cowsays Test"
LABEL "com.github.actions.description"="Say things with a cow"

RUN gem install ruby_cowsay

COPY cow.rb /bin/cowsay

ENTRYPOINT ["cowsay"]
