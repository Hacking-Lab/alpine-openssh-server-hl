FROM hackinglab/alpine-base-hl:3.2
MAINTAINER Ivan Buetler <ivan.buetler@compass-security.com>

# Install openssh server
RUN apk add --update openssl openssh-server && \
    rm -rf /var/cache/apk/*

# Add the files
ADD root /

RUN chmod +x /etc/cont-init.d/99-ssh-server
RUN chmod +x /etc/services.d/openssh-server/run

# Expose the ports for nginx
EXPOSE 2222
