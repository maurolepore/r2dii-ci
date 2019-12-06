# r2dii-ci

Build the image maurolepore/r2dii.ci (tag 3.5) from ./3.5/Dockerfile:

```
docker build --build-arg GITHUB_PAT 3.5 -t maurolepore/r2dii.ci:3.5
```

Push tagname to <https://hub.docker.com/repository/docker/maurolepore/r2dii.ci/>:

```
docker push maurolepore/r2dii.ci:tagname
```

