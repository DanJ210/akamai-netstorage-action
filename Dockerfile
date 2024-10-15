FROM dale432/akamai-jekyll-netstorage:latest

LABEL version="0.1.0"
LABEL repository="https://github.com/jdmevo123/akamai-netstorage-action"
LABEL maintainer="Daniel Jackson <daniel.jackson210@outlook.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
