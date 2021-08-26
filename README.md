# Project Demo

[https://rails-bloggerapp.herokuapp.com/](https://rails-bloggerapp.herokuapp.com/)

## Install

### Clone the repository

```shell
git clone https://github.com/tkivite/bloggerapp.git
cd bloggerapp
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 3.0.2`

If not, install the right ruby version using rvm:

```shell
rvm install ruby-3.0.2
```

```shell
rvm use ruby-3.0.2
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

### Initialize the database

```shell
rails db:create db:migrate db:seed
```

## Serve

```shell
rails s
```

incase of challenges please contact developer mailto: tkivite@gmail.com
