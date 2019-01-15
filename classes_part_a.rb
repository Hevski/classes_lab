class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_student_name(new_student_name)
    @name = new_student_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talks()
    return "I can talk!"
  end

  def fave_programming_language(language)
    return "I love #{language}"
  end


end
