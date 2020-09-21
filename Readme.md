# docker-nginx

An nginx container to run alongside Dockerised php-fpm apps on ECS.

Requirements:

* Fargate 1.4.0+ used for compute;
* networking mode is `awsvpc` (as required for the above): this means the other task is reachable on 127.0.0.1;
* shared ephemeral volume mounted at `/mount/ephemeral`;
* `/var/www/html/web` in the app symlinked to `/mount/ephemeral/web`
  and public content expected to live there;
* php-fpm listening on port 9000.
