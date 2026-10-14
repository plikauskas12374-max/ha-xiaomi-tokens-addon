ARG BUILD_FROM=ghcr.io/home-assistant/base:latest
FROM ${BUILD_FROM}
RUN apk add --no-cache python3 py3-pip py3-virtualenv git ttyd bash
WORKDIR /opt
RUN git clone --depth 1 https://github.com/PiotrMachowski/Xiaomi-cloud-tokens-extractor.git /opt/upstream
RUN python3 -m venv /opt/venv && /opt/venv/bin/pip install --no-cache-dir -r /opt/upstream/requirements.txt
COPY run.sh /run.sh
RUN chmod a+x /run.sh
CMD ["/run.sh"]
