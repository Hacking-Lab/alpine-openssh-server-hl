FROM hackinglab/alpine-base-hl:latest
LABEL maintainer="Ivan Buetler <ivan.buetler@hacking-lab.com>"

# Install openssh server
RUN apk add --update openssl openssh-server openssh && \
    rm -rf /var/cache/apk/*

# Add the files
ADD root /

RUN chmod +x /etc/cont-init.d/99-ssh-server
RUN chmod +x /etc/services.d/openssh-server/run

# Expose the ports for nginx
EXPOSE 2222
