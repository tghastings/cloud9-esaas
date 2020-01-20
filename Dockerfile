FROM tghastings/alpine-rails:latest

RUN apk --update add build-base g++ make curl wget apache2-utils git libxml2-dev sshfs nodejs-npm bash supervisor libevent-dev ncurses-dev \
  && rm -f /var/cache/apk/* \
  && wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz \
  && tar xf tmux-2.3.tar.gz && (cd tmux-2.3 && ./configure && make && make install) \
  && rm -rf tmux* \
  && git clone https://github.com/c9/core.git /cloud9 \
  && cd cloud9 \
  && curl -s -L https://raw.githubusercontent.com/c9/install/master/link.sh | bash \
  && /cloud9/scripts/install-sdk.sh \
  && sed -i -e 's_127.0.0.1_0.0.0.0_g' /cloud9/configs/standalone.js \
  && mkdir /root/environment \
  && mkdir -p /var/log/supervisor

ADD supervisord.conf /etc/

VOLUME /root/environment

EXPOSE 80 3000

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
