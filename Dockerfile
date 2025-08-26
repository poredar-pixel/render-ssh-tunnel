FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y openssh-server && \
    mkdir /var/run/sshd

# Stwórz użytkownika "vpnuser"
RUN useradd -ms /bin/bash vpnuser && echo 'vpnuser:TwojeHaslo123' | chpasswd

# Pozwól na logowanie hasłem
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    sed -i 's/Port 22/Port 7/' /etc/ssh/sshd_config

EXPOSE 7

CMD ["/usr/sbin/sshd", "-D"]
