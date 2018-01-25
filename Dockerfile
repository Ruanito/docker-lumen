FROM centos:7.3.1611

RUN yum -y update

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
	rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN yum -y install httpd && \
	yum -y install php70w php70w-fpm.x86_64 php70w-mbstring php70w-xml

COPY conf.d/dev.conf /etc/httpd/conf.d/dev.conf

COPY scripts/*.sh /
RUN chmod 777 composer.sh build_app.sh

RUN /bin/bash -c "source /composer.sh"

RUN mkdir app

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]