require "test_helper"

class UserTest < ActiveSupport::TestCase
  fixtures :users, :colleges, :exams

  # this test user 1 has all necessary data
  test 'should be valid' do
    assert users(:user1).valid?
  end

# this test user 3 is missing college and exam
  test 'user should not be valid when data is missing' do
      assert_not users(:user3).valid?
  end

  test "user belongs to a college" do
    user = users(:user1)
    assert_instance_of College, user.college
  end
end
