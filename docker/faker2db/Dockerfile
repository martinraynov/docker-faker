FROM python

ARG UID=${UID}
ARG GID=${GID}

RUN pip install fake2db psycopg2

RUN mkdir -p /srv/faker2db && \
    chown -R ${UID}:${GID} /srv/faker2db

WORKDIR /srv/faker2db

VOLUME [ "/srv/faker2db" ]

CMD ["/srv/faker2db/run_test"]
