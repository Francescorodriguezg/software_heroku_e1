require 'rails_helper'

class MessageControllerTest < ActiveSupport::TestCase
  RSpec.describe Message, type: :request do
    # aca van los tests
    describe 'index' do
      it 'should return a successful response' do
        get '/messages'
        expect(response).to have_http_status(302)
      end
    end
  end
end