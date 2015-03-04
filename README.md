docker-compass
==============

Run compass within a docker container

So instead of running

    $ compass build

You can run 

    $ docker run -ti -v `pwd`:/srv marmelab/compass build

## Dockerenv
The below configuration will compile the source code within /src.  Just mount the dir containing your SASS files and it will watch for any changes and recompile

### fig yaml config
```yml
compass:
  image: avatarnewyork/dockerenv-compass
  volumes:
    - /var/www/[project]/public/sites/all/themes/custom/yogatuneup:/src
  ports:
    - "5555"
```
