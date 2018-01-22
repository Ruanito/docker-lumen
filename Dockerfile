FROM centos:7.3.1611

RUN yum -y update

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
	rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN yum -y install httpd && \
	yum -y install php70w php70w-fpm.x86_64

RUN mkdir -p /app/public_html
RUN chown -R apache:apache /app/public_html

COPY conf.d/dev.conf /etc/httpd/conf.d/dev.conf

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]