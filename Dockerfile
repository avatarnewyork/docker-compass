# compass image
# runs compass within a container
FROM ubuntu:14.04
MAINTAINER François Zaninotto <francois+docker@marmelab.com>

ENV HOME /root

RUN apt-get update -qq

# install ruby
RUN apt-get install -y -qq ruby-dev
RUN apt-get install make

# install compass
RUN gem install --no-rdoc --no-ri compass

# set default umask to 002
ADD ./root/etc/profile /etc/profile
ADD ./root/docker-umask-wrapper.sh /bin/docker-umask-wrapper.sh

RUN chmod u+x /bin/docker-umask-wrapper.sh
RUN mkdir /src
WORKDIR /src

CMD docker-umask-wrapper.sh compass watch
