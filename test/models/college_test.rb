require "test_helper"

class CollegeTest < ActiveSupport::TestCase
  test 'should be valid' do
    assert colleges(:college1).valid?
  end
end
