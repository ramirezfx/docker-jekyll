# docker-jekyll-4.2.2

This will build a docker-image with the latest Jekyll-Version

## INSTALL

If git is not installed, install git by typing:

`sudo apt-get install git`

Clone this repo:

`git clone https://github.com/ramirezfx/docker-jekyll-4.2.2.git`

## Build the Docker-Image:

Navigate to the project-folder

`cd docker-jekyll-4.2.2`

Build the image:

`sudo docker build -t docker-jekyll:4.2.2 .`

# USAGE:

## Serve your project:

Navigate to your jekyll-project folder you want to serve:

`cd /your/jekyll/project/folder`

Start the image:

`sudo docker run --rm -it --volume="$PWD:/root/html" -p 4100:4000 docker-jekyll:4.2.2 /bin/sh -c "cd /root/html && bundle exec jekyll serve --host 0.0.0.0"`

Once done, you can access your page by navigating your webbrowser to: http://localhost:4100

## Build your project:

If you want to build your project, navigate to your project folder as described above and type the following command:

`sudo docker run --rm -it --volume="$PWD:/root/html" -p 4100:4000 ramirezfx/docker-jekyll:latest /bin/sh -c "cd /root/html && bundle exec jekyll build"`
