FROM alpine:3.18
WORKDIR /app
COPY . .
RUN apk add --no-cache python3 py3-pip \
 && pip3 install --no-cache-dir -r requirements.txt
CMD ["python3", "app.py"]