require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Cmsp < OmniAuth::Strategies::OAuth
      option :name, 'cmsp'
      option :client_options, {
        site:             'https://api.shop-pro.jp',
        authorize_url:    'https://api.shop-pro.jp/oauth/authorize',
        access_token_url: 'https://api.shop-pro.jp/oauth/token',
      }

      uid      { raw_info['shop']['id'] }
      info     { { name: raw_info['shop']['login_id'] } }
      extra    { { raw_info: raw_info } }

      def raw_info
        @raw_info ||= access_token.get('https://api.shop-pro.jp/v1/shop.json').parsed
      end
    end
  end
end
