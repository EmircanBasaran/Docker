FROM postgres:13

#RUN mkdir /etc/postgres
#COPY postgresql.conf 	  /etc/postgres/postgresql.conf
#COPY postgresql.conf 	  /var/lib/postgresql/data/postgresql.conf
#COPY postgresql.conf      /tmp/postgresql.conf
#COPY updateConfig.sh      /docker-entrypoint-initdb.d/_updateConfig.sh

#RUN apt-get update -y
#RUN apt-get install -qq -y curl
#RUN apt-get install net-tools -y
#RUN apt-get install ufw -y


#RUN mkdir /var/lib/postgresql/data/
#ENTRYPOINT ["postgres"]
#CMD ["-c", "config_file=/etc/postgresql/postgresql.conf"]

#Performance Tuning
#RUN sed -i -e"s/^max_connections = 100.*$/max_connections = 1000/" /var/lib/postgresql/data/postgresql.conf
#RUN sed -i -e"s/^shared_buffers =.*$/shared_buffers = 16GB/" /var/lib/postgresql/data/postgresql.conf
#RUN sed -i -e"s/^#effective_cache_size = 4GB.*$/effective_cache_size = 32GB/" /var/lib/postgresql/data/postgresql.conf
#RUN sed -i -e"s/^#work_mem = 4MB.*$/work_mem = 16MB/" /var/lib/postgresql/data/postgresql.conf
#RUN sed -i -e"s/^#maintenance_work_mem = 64MB.*$/maintenance_work_mem = 2GB/" /var/lib/postgresql/data/postgresql.conf
#RUN sed -i -e"s/^#checkpoint_segments = .*$/checkpoint_segments = 32/" /var/lib/postgresql/data/postgresql.conf
#RUN sed -i -e"s/^#checkpoint_completion_target = 0.5.*$/checkpoint_completion_target = 0.7/" /var/lib/postgresql/data/postgresql.conf
#RUN sed -i -e"s/^#wal_buffers =.*$/wal_buffers = 16MB/" /var/lib/postgresql/data/postgresql.conf
#RUN sed -i -e"s/^#default_statistics_target = 100.*$/default_statistics_target = 100/" /var/lib/postgresql/data/postgresql.conf

#ENTRYPOINT ["COPY"]
#CMD ["postgresql.conf","/var/lib/postgresql/data/"]

#ENTRYPOINT ["RUN sed"]
#CMD ["-i -e"s/^max_connections = 100.*$/max_connections = 1000/" /var/lib/postgresql/data/postgresql.conf"]
#CMD ["-i -e"s/^shared_buffers =.*$/shared_buffers = 16GB/" /var/lib/postgresql/data/postgresql.conf"]
#CMD ["-i -e"s/^#effective_cache_size = 128MB.*$/effective_cache_size = 48GB/" /var/lib/postgresql/data/postgresql.conf"]