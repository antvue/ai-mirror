```bash
docker build -t antvue/ai-mirror .
docker push antvue/ai-mirror
```

```yaml
volumes:
    - /usr/local/openresty/nginx/conf/conf.d
    - /var/nginx-cache
```


docker-compose.yml

```yaml
version: '3'

services:

  mirror:
    image: antvue/ai-mirror
    container_name: mirror
    restart: always
    ports:
      - 3129:3129
    volumes:
      # - /mirror/config:/usr/local/openresty/nginx/conf/conf.d
      - /mirror/cache/:/var/nginx-cache
    logging:
      driver: "json-file"
      options:
        max-size: "50m"

```