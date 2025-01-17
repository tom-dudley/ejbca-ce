FROM keyfactor/ejbca-ce:9.0.0

ENV REPO="https://repo.almalinux.org/almalinux/9/BaseOS/x86_64/os/Packages"

USER root

ENV PACKAGE="krb5-libs-1.21.1-4.el9_5.x86_64.rpm"
RUN curl -O $REPO/$PACKAGE
RUN rpm -ivh --replacepkgs --force $PACKAGE 

USER 10001
