FROM ghcr.io/home-assistant/home-assistant:stable

# Εκθέτει την προεπιλεγμένη θύρα του Home Assistant
EXPOSE 8123

CMD ["python3", "-m", "homeassistant", "--config", "/config"]
