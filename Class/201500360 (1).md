# **Dillinger**
# ***The Last Markdown Editor,Ever***

Dillinger is a cloud-enabled, mobbie-ready, offline-storage compatible,<br>
Angular JS-powered HTML5 Markdown editor.
> - Type some Markdown on the left
> - See HTML in the right
> - :star:Magic:star:

## **Features**
> - Import a HTML file and watch it magically convert to Markdown
> - Drag and drop images(requires your Dropbox account be linked)
> - Import and save files from GitHub, Dropbox,Google Drive and One Drive
> - Drag and drop markdown and HTML files into Dillinger
> - Export documents as Markdown, HTML and PDF
<br>
Markdown is a lightweight markup language based on the formating conventions <br>
that people naturally use in email. <br>
As [John Gurber](https://ko.wikipedia.org/w/index.php?search=JohnGruber&title=%ED%8A%B9%EC%88%98:%EA%B2%80%EC%83%89&profile=advanced&fulltext=1&ns0=1) writes on the [Markdown site](https://ko.wikipedia.org/w/index.php?search=Markdown+site&title=%ED%8A%B9%EC%88%98%3A%EA%B2%80%EC%83%89&ns0=1)

```python
for i in range(10):
  print(hello)
```

> *The overriding desing goal for Markdown's<br>formatting syntax is to make it as readable<br>as possible. The idea it that a<br>Markdown-formattedd document shoul be<br>published as-is,as plain text, without<br>looking like it's been marked up with tags<br>or formatting instructions*

This text you see here is ^*^actually-written in Markdown! To get a feel <br>for Markdown's syntax, type some text into left window and<br>watch the results in the right.
## Tech
Dillinger uses a number of open source projects to work properly:
> - [AngularJS](https://ko.wikipedia.org/wiki/AngularJS) - HTML enhaced for wen apps!
> - [Ace Editor](https://ko.wikipedia.org/w/index.php?search=Ace+Editor&title=%ED%8A%B9%EC%88%98%3A%EA%B2%80%EC%83%89&ns0=1) - awesome web-based text edtior
> - [markdown-it](https://ko.wikipedia.org/w/index.php?search=markdown-it&title=%ED%8A%B9%EC%88%98%3A%EA%B2%80%EC%83%89&ns0=1) - Markdown parser done right Fast and easy to extend.
> - [Twitter Bootstrap](https://ko.wikipedia.org/w/index.php?search=Twitter+Bootstrap&title=%ED%8A%B9%EC%88%98%3A%EA%B2%80%EC%83%89&ns0=1) - great UI boilerplate for modern web apps
> - [node.js](https://ko.wikipedia.org/wiki/Node.js) - evented I/O for the backend
> - [Express](https://ko.wikipedia.org/wiki/%EC%9D%B5%EC%8A%A4%ED%94%84%EB%A0%88%EC%8A%A4)) - fast node.js network app framework [@tjholowaychuk](https://ko.wikipedia.org/w/index.php?search=tjholowaychuk&title=%ED%8A%B9%EC%88%98%3A%EA%B2%80%EC%83%89&ns0=1))
> - [Gulp](https://ko.wikipedia.org/wiki/%EA%B1%B8%ED%94%84) - the streaming build system
> - [Breakdance](https://ko.wikipedia.org/w/index.php?search=Breakdance&title=%ED%8A%B9%EC%88%98%3A%EA%B2%80%EC%83%89&ns0=1)- HTML

## Installation
Dillinger requires [Node.js](https://ko.wikipedia.org/wiki/Node.js) v10+ to run.<br><br>
Install the dependencies and devDependencies and start the server.

```
cd dillinger
npm i
nod app
```

For production environments---
```
npm install --production
NODE_ENV=prodcution node app
```

## Plugins
Dillinger is currently extended with the following plugins.<br>
Instructions on how to use them is your own application are linked below.

|*Plugin*|*README*|
|:---|:---|
|Dropbox|[plugins/dropbox/README.md](https://ko.wikipedia.org/wiki/%EB%93%9C%EB%A1%AD%EB%B0%95%EC%8A%A4)|
|GitHub|[plugins/github/README.md](https://ko.wikipedia.org/wiki/%EA%B9%83%ED%97%88%EB%B8%8C)|
|Google Drive|[plugins/googldrive/README.md](https://ko.wikipedia.org/wiki/%EA%B5%AC%EA%B8%80_%EB%93%9C%EB%9D%BC%EC%9D%B4%EB%B8%8C)|
|Onedrive|[plugins/onedrive/README.md](https://ko.wikipedia.org/wiki/%EC%9B%90%EB%93%9C%EB%9D%BC%EC%9D%B4%EB%B8%8C)|
|Medium|[plugins/medium/README.md](https://ko.wikipedia.org/wiki/%EB%AF%B8%EB%94%94%EC%97%84)|

## Development
Want to contribute? Great!<br><br>

Dillinger uses Gulp + Webpack for fast deveploping.<br>
Make a change in your file and instantaneously see your updates!<br>

Open your favorite Terminal and run these commands.

First Tab:
```
node app
```
Second Tab:
```
gulp watch
```
(optional) Third:
```
karma test
```