FROM centos:latest

RUN yum -y update && yum -y install git bzip2 gcc openssl openssl-devel readline-devel

RUN git clone https://github.com/sstephenson/rbenv.git /root/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build
RUN /root/.rbenv/plugins/ruby-build/install.sh
ENV PATH /root/.rbenv/bin:$PATH
RUN eval "$(rbenv init -)"
RUN rbenv install 2.5.0
RUN rbenv global 2.5.0
RUN mkdir /ruby
WORKDIR /ruby