# OmniAuth::ColorMeShop

OmniAuth strategy for [ColorMeShop API](http://shop-pro.jp/?mode=api).

## Usage

```ruby
use OmniAuth::Builder do
  provider :colormeshop, ENV['COLORMESHOP_CONSUMER_KEY'], ENV['COLORMESHOP_CONSUMER_SECRET']
end
```

### Scopes

You can set scopes with `scope` option as below:

```ruby
use OmniAuth::Builder do
  provider :cmsp, ENV['COLORMESHOP_CONSUMER_KEY'], ENV['COLORMESHOP_CONSUMER_SECRET'], {
    scope: 'read_products write_products read_sales write_sales',
  }
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-colormeshop'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-colormeshop

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
