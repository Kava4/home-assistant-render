# Dockerfile για Home Assistant στο Render

FROM homeassistant/home-assistant:stable

# Αντιγράφει τα config files μέσα στο container
COPY config /config

# Εξατομίκευση εκκίνησης, αν θες μπορείς να προσθέσεις entrypoint scripts

CMD [ "python3", "-m", "homeassistant", "--config", "/config" ]
