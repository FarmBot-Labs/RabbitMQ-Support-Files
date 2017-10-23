```
sudo docker run --name "farmbot-mqtt" -v "$(pwd)/conf:/etc/rabbitmq" -v "$(pwd)/rabbitmq:/var/lib/rabbitmq" farmbot-mqtt
```
