class Student

  def initialize(student_name, cohort_number)
    @student_name = student_name
    @cohort_number = cohort_number
  end



  def student_name
    return @student_name
  end


  def cohort_number
    return @cohort_number
  end


  def set_student_name(new_name)
    @student_name = new_name
  end


  def set_cohort_number(new_number)
    @cohort_number = new_number
  end


def make_them_talk(student_talking)
  return student_talking
end

def fav_language(language)
  return "I love " + language.to_s
end


end