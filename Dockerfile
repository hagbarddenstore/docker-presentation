FROM scratch

COPY bin/docker-presentation /bin/docker-presentation

ENTRYPOINT ["/bin/docker-presentation"]
