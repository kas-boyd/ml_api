require "test_helper"

class ExamTest < ActiveSupport::TestCase
  fixtures :exams, :colleges, :users, :exam_windows

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

  test "an exam should have an exam window" do
    exam = exams(:exam1)
    assert_not_nil exam.exam_window
  end

  #negative cases

  test 'should be invalid if is missing a college or window' do
    exam = exams(:exam4)
    assert_not exam.valid?
  end


end

#assert_nil exam.exam_window  # Ensure the exam does not have an exam window
#assert_not_empty exam.errors[:exam_window]
