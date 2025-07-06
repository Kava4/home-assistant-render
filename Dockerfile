FROM ghcr.io/home-assistant/home-assistant:stable

ENV TZ=Europe/Athens

# Τρέξε το Home Assistant στην πόρτα 80 αντί για 8123
CMD [ "python3", "-m", "homeassistant", "--config", "/config", "--server-port", "80" ]
