class Student

  attr_reader :name
  attr_writer :name
  attr_accessor :cohort

  def initialize(cohort, name)
    @cohort = cohort
    @name = name
  end

  def student_cohort(cohort)
      return @cohort
  end

  # def student_name(name)
  #     return @name
  # end

  def talk()
    return "I can talk."
  end

  def fav_lang(fav_lang)
    return "I love #{fav_lang}"
  end

  # def set_student_name(new_name)
  #   @name = new_name
  # end

end
