require "test_helper"

class CollegeTest < ActiveSupport::TestCase
  fixtures :colleges, :exams, :users

  test 'should be valid' do
    assert colleges(:college1).valid?
  end

  test "college has one or many users" do
    college = colleges(:college1)
    assert_instance_of User, college.users.first
  end

  test "college has one or many exams" do
    college = colleges(:college1)
    assert_instance_of Exam, college.exams.first
  end

end
