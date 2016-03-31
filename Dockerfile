FROM quay.io/webcenter/rancher-base-image:latest
MAINTAINER Sebastien LANGOUREAUX <linuxworkgroup@hotmail.com>



# Add duplicity to manage backup
RUN apt-get update && \
    apt-get -y duplicity ncftp python-paramiko python-gobject-2 python-boto





# CLEAN APT
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


#ENTRYPOINT ["duplicity"]
VOLUME ["/backup"]
#CMD ["npm", "start"]
