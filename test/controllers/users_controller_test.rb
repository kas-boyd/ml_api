require 'test_helper'

module Api
  module V1
    class UsersControllerTest < ActionDispatch::IntegrationTest
      test 'should create a user with valid data' do
        post '/api/v1/users', params: {
          first_name: 'John',
          last_name: 'Doe',
          phone_number: '123456789',
          college_id: 1,
          exam_id: 1,
          start_time: DateTime.now
        }

        assert_response :success
        assert_equal 1, User.count
      end
    end
  end
end
