require('minitest/autorun')
require('minitest/rg')
require_relative('./part_A_student.rb')
class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Jim", 5)
    assert_equal("Jim", student.student_name)
  end


  def test_cohort_number
    student = Student.new("Jim", 5)
    assert_equal(5, student.cohort_number)
  end


  def test_set_student_name
    student = Student.new("Jim", 5)
    student.set_student_name("Gary")
    assert_equal("Gary", student.student_name)
  end


  def test_set_cohort_number
    student = Student.new("Jim", 5)
    student.set_cohort_number(7)
    assert_equal(7, student.cohort_number)
  end


  def test_make_them_talk
    student = Student.new("Jim", 5)
    student_speaks = student.make_them_talk("I can talk!")
    assert_equal("I can talk!", student_speaks)
  end

  def test_fav_language
    student = Student.new("Jim", 5)
    favourite_language = student.fav_language("Ruby") 
    assert_equal("I love Ruby", favourite_language)
  end



end