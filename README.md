docker-compass
==============

Run compass within a docker container

So instead of running

    $ compass build

You can run 

    $ docker run -ti -v `pwd`:/srv marmelab/compass build

## Dockerenv
The below configuration will look for `config.rb` inside the `/src` dir and compile code according to the config upon file changes.

### fig yaml config
```yml
compass:
  image: avatarnewyork/dockerenv-compass
  volumes:
    - /var/www/[project]/public/sites/all/themes/custom/yogatuneup:/src
  ports:
    - "5555"
```

## Other reading
* https://blog.gaya.ninja/articles/how-to-start-using-sass-and-compass-in-10-minutes/
* http://compass-style.org/


