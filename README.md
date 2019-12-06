# r2dii-ci

Docker images for buildign r2dii packages

When installing packages from GitHub we usually need to authenticate via the `GITHUB_PAT` environmental variable. That avoids hitting GitHub's requests limit. This is how to do it.

First export the `GITHUB_PAT` environmental variable from ~/.bash_profile

```
export GITHUB_PAT=<my github pat>
```

Then source ~/.bash_profile

```
source ~/.bash_profile
```

Finally build with  `--build-ar GITHUB_PAT`

```
docker build --build-arg GITHUB_PAT <Dockerfile's dir> -t image-name 
```

`-t image-name` tags the image as "image-name".

--

Source <https://vsupalov.com/docker-build-pass-environment-variables/>
