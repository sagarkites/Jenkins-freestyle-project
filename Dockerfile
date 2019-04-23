FROM centos:6

RUN yum clean all

ENTRYPOINT ["/usr/bin/cat"]

CMD ["/etc/passwd"]

EXPOSE 80
