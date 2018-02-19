#!/bin/bash
docker run -v `pwd`/rubyFiles:/ruby -it ruby_env /root/.rbenv/shims/ruby /ruby/$1