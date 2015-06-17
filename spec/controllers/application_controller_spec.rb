require File.dirname(__FILE__) + '/../spec_helper'

describe ApplicationController do
  describe '#auth_path' do
    it 'should return the expected path' do
      subject.send(:auth_path, 'an_omniauth_provider_name').should eq('/auth/an_omniauth_provider_name')
    end
    it 'should return the expected path plus query string' do
      subject.send(:auth_path, 'an_omniauth_provider_name', 'key=value').should
      eq('/auth/an_omniauth_provider_name?key=value')
    end
  end
end
