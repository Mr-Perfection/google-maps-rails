# google-maps-rails
Implement Google Maps API in Rails
## Getting Started
* I will be using Geocoder gem to implement Google Maps API for this demo.
```
- created the rails application using the following command:
$ rails new . -T # T extension prevents to create test files.
- created controller using this command:
$ rails generate controller static_pages home show play
- Heroku setup
$ heroku login
$ git init
$ heroku git:remote -a yourapp
$ git add .
$ git commit -am "make it better"
$ git push heroku master
```

## Resources
http://railscasts.com/episodes/273-geocoder?autoplay=true
https://github.com/alexreisner/geocoder
https://anadea.info/blog/how-to-integrate-google-maps-into-ruby-on-rails-app