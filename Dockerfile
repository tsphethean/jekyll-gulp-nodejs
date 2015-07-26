FROM ubuntu:15.10

RUN apt-get update && \
    apt-get install ruby ruby-dev nodejs npm gcc git rsync make && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install jekyll && \
    npm install gulp gulpfile-install