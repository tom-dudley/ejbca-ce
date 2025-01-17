FROM keyfactor/ejbca-ce:9.0.0

USER root

ENV REPO="https://repo.almalinux.org/almalinux/9/BaseOS/x86_64/os/Packages"
ENV PACKAGE="krb5-libs-1.21.1-4.el9_5.x86_64.rpm"
RUN curl -O $REPO/$PACKAGE
RUN rpm -Uvh --replacepkgs --force $PACKAGE 

USER 10001
