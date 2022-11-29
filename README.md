# docker-jekyll

This will build a docker-image with Pre-installed Jekyll

## INSTALL

If git is not installed, install git by typing:

`sudo apt-get install git`

Clone this repo:

`git clone https://github.com/ramirezfx/docker-jekyll.git`

## Build the Docker-Image:

Navigate to the project-folder

`cd docker-jekyll`

Build the image:

`sudo docker build -t docker-jekyll:version .`
Replace "version" with the jekyll-version

# USAGE:

## Serve your project:

Navigate to your jekyll-project folder you want to serve:

`cd /your/jekyll/project/folder`

### Option1: Start the image inside the terminal:

`sudo docker run --rm -it --volume="$PWD:/root/html" -p 4100:4000 docker-jekyll:version /bin/sh -c "cd /root/html && bundle exec jekyll serve --host 0.0.0.0"`

Once done, you can access your page by navigating your webbrowser to: http://localhost:4100

### Option2: Usage of a start-script

The second opion is to copy the script "1startproject.sh" to your jekyll-project folder:

Make the script executable

`chmod +x 1startproject.sh`

Copy the script to your jekyll-project folder:

`cp 1startproject.sh /your/jekyll/project/folder`

Execute the script by double-click at the icon or execute inside the terminal:

`/your/jekyll/project/folder/1startproject.sh`

## Build your project:

If you want to build your jekyll-project, navigate to your project folder as described above and type the following command:

`sudo docker run --rm -it --volume="$PWD:/root/html" -p 4100:4000 ramirezfx/docker-jekyll:latest /bin/sh -c "cd /root/html && bundle exec jekyll build"`

The build can be found inside the "_site"-folder of the root of your jekyll-project.

## Use the pre-build image instead of creating your own:

If you do not want to build your own image, you can use my pre-build image by navigating to the root of your project-folder and type:

`sudo docker run --rm -it --volume="$PWD:/root/html" -p 4100:4000 ramirezfx/docker-jekyll:version /bin/sh -c "cd /root/html && bundle exec jekyll serve --host 0.0.0.0"`

Once done, you can access your page by navigating your webbrowser to: http://localhost:4100
