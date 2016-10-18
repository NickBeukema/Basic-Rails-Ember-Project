# Rails API and Ember

This is a basic starter project using Rails in API mode, and Ember on the front-end.

## What this project starts with

### Rails and Ember

Rails 5 on the back-end, set up in [API mode](http://edgeguides.rubyonrails.org/api_app.html). 

Ember 2.8 is used on the front-end, with [Ember Data](https://github.com/emberjs/data) 2.8. 

The Ember pipeline is integrated into the Rails server through [Ember-CLI](https://github.com/ember-cli/ember-cli).

### Authentication

Authentication is provided with [Devise](https://github.com/plataformatec/devise) on the back-end and [Ember Simple Auth](https://github.com/simplabs/ember-simple-auth) on the front-end.

### TODO

- [x] Main back-end and front-end technologies.
- [x] User Login and Authentication
- [ ] Unit Testing Framework
- [ ] Integrated Testing Framework

## How to set up this project

```
bundle install
rake db:create db:migrate
rake ember:install
```




