FROM alpine:edge

RUN apk add --no-cache python3 \
                       git && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install git+https://github.com/dropbox/dropbox-sdk-python@master && \
    apk del git && \
    rm -r /root/.cache

COPY . /app

WORKDIR /app

ENTRYPOINT /app/pydbxcli.py

CMD version
