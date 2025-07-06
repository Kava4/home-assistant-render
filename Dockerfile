FROM ghcr.io/home-assistant/home-assistant:stable

ENV TZ=Europe/Athens

# Τρέξε το Home Assistant στην πόρτα 80 αντί για 8123
CMD [ "python3", "-m", "homeassistant", "--config", "/config", "--server-port", "80" ]
ENV HASS_HTTP_TRUSTED_PROXIES=0.0.0.0/0
ENV HASS_HTTP_USE_X_FORWARDED_FOR=true
ENV HASS_HTTP_SERVER_HOST=0.0.0.0
