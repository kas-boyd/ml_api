require "test_helper"

class ExamWindowTest < ActiveSupport::TestCase
  fixtures :exam_windows, :exams

  test 'should be valid' do
    assert exam_windows(:window1).valid?
  end

  #an exam window should belong to an exam
  test "exam window belongs to an exam" do
    exam_window = exam_windows(:window1)
    assert_instance_of Exam, exam_window.exam
  end

  #negative cases

  test 'should be invalid if is missing an exam' do
    exam_window = exam_windows(:window4)
    assert_not exam_window.valid?
  end

end
