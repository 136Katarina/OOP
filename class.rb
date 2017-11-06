class Student
  attr_accessor :student_name, :student_cohort

  def initialize(input_student_name, input_student_cohort)
    @student_name = input_student_name
    @student_cohort = input_student_cohort

  end

  def student_name
    return @student_name
  end

  def student_cohort
    return @student_cohort
  end

  def set_student_name(name)
    return @student_name
  end

  def set_student_cohort(cohort)
    return @student_cohort
  end

  def student_talk()
    return 'I can talk!'
  end

  def favorite_language(language)
    return "I love #{language}"
  end

end
