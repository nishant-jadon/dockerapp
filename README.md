# dockerapp

Let's create our git repository:

```
$ mkdir demo-cicd && cd demo-cicd
$ git init
$ git remote add origin https://github.com/prasenforu/dockerapp
$ touch README.md
$ git add README.md && git commit README.md -m "init"
$ git push -u origin
```

Let's decide to change the color of our title!!!

```
$ sed -i s/red/green/ index.php
$ git commit -am "from red to green" && git push
```
