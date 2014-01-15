require 'spec_helper'

describe OmniAuth::Strategies::Cmsp do
  subject do
    OmniAuth::Strategies::Cmsp.new({})
  end

  describe 'client options' do
    it 'should have correct site' do
      expect(subject.options.client_options.site).to be == 'https://api.shop-pro.jp'
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to be == 'https://api.shop-pro.jp/oauth/authorize'
    end

    it 'should have correct token url' do
      expect(subject.options.client_options.access_token_url).to be == 'https://api.shop-pro.jp/oauth/token'
    end
  end
end
