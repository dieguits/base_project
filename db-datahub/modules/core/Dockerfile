FROM flyway/flyway:8.5.0-alpine

ENV FLYWAY_SCHEMAS=main

ENV FLYWAY_EDITION=community
ENV FLYWAY_OUT_OF_ORDER=true
ENV FLYWAY_VALIDATE_ON_MIGRATE=false

RUN mkdir /flyway/test-data

COPY flyway /flyway/

ENTRYPOINT ["flyway"]
CMD ["-?"]