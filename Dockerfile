FROM python:3.10
RUN apt-get update && apt-get install -y curl
RUN curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
RUN arduino-cli
RUN arduino-cli config init
RUN arduino-cli config add board_manager.additional_urls https://dl.espressif.com/dl/package_esp32_index.json
RUN arduino-cli core update-index
RUN arduino-cli core install esp32:esp32
RUN arduino-cli lib install M5Stack
RUN arduino-cli lib install M5StickC