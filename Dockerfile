FROM ubuntu:zesty

RUN apt-get update --yes
RUN apt-get upgrade --yes
RUN apt-get install libsctp1 socat libwxbase3.0-0v5 libwxgtk3.0-0v5 logrotate --yes

ADD esl-erlang_19.3-1~ubuntu~zesty_amd64.deb /
ADD rabbitmq-server_3.6.12-1_all.deb         /
ADD enabled_plugins                          /etc/rabbitmq/
ADD rabbitmq.config                          /etc/rabbitmq/
ADD jsx-2.8.2.ez                     /usr/lib/rabbitmq/lib/rabbitmq_server-3.6.12/plugins/
ADD jwt-0.1.3.ez                     /usr/lib/rabbitmq/lib/rabbitmq_server-3.6.12/plugins/
ADD base64url-0.0.1.ez               /usr/lib/rabbitmq/lib/rabbitmq_server-3.6.12/plugins/
ADD rabbit_auth_backend_jwt-0.0.1.ez /usr/lib/rabbitmq/lib/rabbitmq_server-3.6.12/plugins/

RUN dpkg -i /esl-erlang_19.3-1~ubuntu~zesty_amd64.deb
RUN dpkg -i /rabbitmq-server_3.6.12-1_all.deb
RUN apt --fix-broken install


