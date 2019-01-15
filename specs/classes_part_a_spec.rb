require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_part_a.rb')

class TestStudent < MiniTest::Test

  # use this so don't have to type Student.new every time
  # def setup()
  #   @student = Student.new("Heather", "G11")
  # end

  # def test_get_student_name
  #   assert_equal("Heather", @student.student_name)
  # end

  def test_get_student_name
    codeclan_student = Student.new("Heather", "G11")
    assert_equal("Heather", codeclan_student.student_name)
  end

  def test_get_student_cohort
    codeclan_student = Student.new("Heather", "G11")
    assert_equal("G11", codeclan_student.cohort)
  end

  def test_set_student_name
    codeclan_student = Student.new("Heather", "G11")
    codeclan_student.set_student_name("Frank")
    assert_equal("Frank", codeclan_student.student_name)
  end

  def test_student_cohort_change
    codeclan_student = Student.new("Heather", "G11")
    codeclan_student.set_cohort("G12")
    assert_equal("G12", codeclan_student.cohort)
  end

  def test_student_talks
    codeclan_student = Student.new("Heather", "G11")
    assert_equal("I can talk!", codeclan_student.student_talks)
  end

  def test_student_fave_programming_language
    codeclan_student = Student.new("Heather", "G11")
    assert_equal("I love Ruby", codeclan_student.fave_programming_language("Ruby"))
  end
end
