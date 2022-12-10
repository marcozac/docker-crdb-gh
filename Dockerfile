FROM cockroachdb/cockroach:v22.2.0
RUN mkdir /cockroach/cockroach-data
CMD [ "start-single-node", "--insecure", "--store=type=mem,size=80%" ]
