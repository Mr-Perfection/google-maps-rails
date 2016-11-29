# google-maps-rails

## Description
* Implementation of Google Maps API in Rails.
* with this configuration, you can browse through the locations with the search bar and generate the maps
  based on the geo-location.

## Getting Started
* I will be using Geocoder gem to implement Google Maps API for this demo.
DEMO website: [Weather Forcast](https://google-maps-geocoder.herokuapp.com) - click this link.

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
## Versions

### version 1.01 (Geocoder)
* use geocoder gem and configure latitude and longitude.
* genereate data model: Post
* create a migration to add latitude and longitude.

```
$ rails generate model post
$ rails generate migration AddLatitudeAndLongitudeToPost latitude:float longitude:float
$ rails generate migration add_attributes_for_address_to_post \
  street_address:string city:string state:string zip:string 
$ rails db:migrate
```

* Geocode configuerations
- Check commited changes for more details.
* Create a post controller and associated views with it.

```
rails generate controller posts create show edit
```

* Create a method for full address.

```rb
def full_address
 	"United States, #{zip}, #{state}, #{city}, #{street_address}"
end
```

### version 1.00 (initial set-up)
* generate the controller with home page.
* CSS added to the view.

```
$ rails generate controller StaticPages home
```

## Resources
* http://railscasts.com/episodes/273-geocoder?autoplay=true
* https://github.com/alexreisner/geocoder
* https://anadea.info/blog/how-to-integrate-google-maps-into-ruby-on-rails-app

## Authors
[Stephen Lee](http://www.stephenslee.xyz) -the hacker that dreams big.

## License
This project is free to all. Use this. Build things that matter.