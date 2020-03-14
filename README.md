# Readme

```shell
docker build -t  caddy-local .
```

Запускать из папки web-sdk

```shell
docker run -it --rm --name caddy-local --hostname caddy-local -p 8080:8080 -v $PWD/dist:/dist --network custom caddy-local
```


> Если вдруг надо удалить контейнер
> `docker rm -f caddy-local`


```shell
docker run --name fake-shop -d --rm -e DOMAIN=stat.demo.local -v $PWD/snippet.twig:/usr/src/fakeshop/views/__cnt__.twig --network=custom madiedinro/fake-shop
```
