require('minitest/autorun')
require('minitest/rg')
require('minitest/emoji')
require_relative('../w2d1_ex_A_labschool')

class TestStudent < MiniTest::Test

  def setup()
    @simon_hall = Student.new("E31", "Simon Hall")
    @vlad_impaler = Student.new("E31", "Vlad Impaler")
  end

#1.
  def test_student_cohort()
    actual = @simon_hall.cohort
    assert_equal("E31", actual)
  end

#2.
  def test_student_name()
    actual = @simon_hall.name
    assert_equal("Simon Hall", actual)
  end

#3.
  def test_set_student_name()
    actual = @student.set_student_name("HRH Simon Hall")
    assert_equal("HRH Simon Hall", actual)
  end

#4.
  def test_talk()
    actual = @simon_hall.talk()
    assert_equal("I can talk.", actual)
  end

#5.
  def test_student_fav_lang()
    actual = @simon_hall.fav_lang("Ruby")
    assert_equal("I love Ruby", actual)
  end

#6
  def test_set_student_name
    # @simon_hall.set_name("Zargon Ruler of the Universe")
    @simon_hall.name = "Zargon Ruler of the Universe"
    actual =  @simon_hall.name
    assert_equal("Zargon Ruler of the Universe", actual)
  end

end

#A EXERCISES
## Add in Setter methods to:
## 1. update the students name and what cohort they are in.
## 2. Create a method that gets the student to talk (eg. Returns "I can talk!).
## 3. Create a method that takes in a students favourite
## programming language and returns it as part of a string
## (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").
