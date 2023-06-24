require "test_helper"

class ExamTest < ActiveSupport::TestCase
  fixtures :exams, :colleges, :users

  test 'should be valid' do
    assert exams(:exam1).valid?
  end

  test "exam belongs to a college" do
    exam = exams(:exam1)
    assert_instance_of College, exam.college
  end

  test "exams has many users" do
    exam = exams(:exam1)
    assert_instance_of User, exam.users.first
  end

end
