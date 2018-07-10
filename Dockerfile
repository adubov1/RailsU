FROM ruby:2.5.1
RUN chmod 777 /
RUN apt-get install wget ca-certificates
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN apt-get update
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get install -y libicu-dev libssl-dev software-properties-common postgresql-9.6 postgresql-client-9.6 postgresql-contrib-9.6
RUN rm -rf /var/lib/apt/lists/*

USER postgres
RUN    /etc/init.d/postgresql start &&\
    psql --command "CREATE USER railsdev WITH SUPERUSER PASSWORD 'alex2002';"
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.6/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.6/main/postgresql.conf
EXPOSE 5432
VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]

USER root

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD ["/bin/bash"]

