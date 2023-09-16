# Use a imagem oficial do Mosquitto como base
FROM eclipse-mosquitto

# Crie as pastas de dados e log
RUN mkdir -p /mosquitto/data /mosquitto/log

# Copie os arquivos de configuração para a pasta correta no contêiner
COPY config/mosquitto.conf /mosquitto/config/mosquitto.conf
COPY config/pwfile /mosquitto/config/pwfile

# Exponha a porta MQTT padrão (1883)
EXPOSE 1883

# Inicie o servidor Mosquitto
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
