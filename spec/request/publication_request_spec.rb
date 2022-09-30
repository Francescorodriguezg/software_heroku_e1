require 'rails_helper'

class PublicationControllerTest < ActiveSupport::TestCase
  RSpec.describe Publication, type: :request do
    # aca van los tests
    describe 'index' do
      it 'should return a successful response' do
        get '/publications/index'
        expect(response).to have_http_status(302)
      end
    end

    describe 'end' do
      it 'should return a successful response' do
        get '/publications/new'
        expect(response).to have_http_status(302)
      end
    end
  end
end
