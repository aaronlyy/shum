FROM alpine

RUN apk add --no-cache cifs-utils bash

COPY mount.sh /mount.sh
RUN chmod +x /mount.sh


CMD ["/mount.sh"]