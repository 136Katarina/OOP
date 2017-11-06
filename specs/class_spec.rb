require ('minitest/autorun')
require('minitest/rg')
require_relative('../class.rb')

class TestStudent < MiniTest::Test

    def test_student_name
      student = Student.new('Katarina','E17')
      assert_equal('Katarina', student.student_name)
    end

    def test_student_cohort
        student = Student.new('Katarina','E17')
        assert_equal('E17', student.student_cohort)
    end

    def test_set_student_name
      student = Student.new('Katarina','E17')
      student.student_name = 'Mark'
      assert_equal('Mark', student.student_name)
    end

    def test_set_student_cohort
      student = Student.new('Katarina', 'E17')
      student.student_cohort = 'E18'
      assert_equal('E18', student.student_cohort)
    end

    def test_student_sentence
      student = Student.new('Katarina', 'E17')
      student.student_talk
      assert_equal('I can talk!', student.student_talk)
    end

    def test_favorite_language
      student = Student.new('Katarina', 'E17')
      assert_equal('I love Ruby!', student.favorite_language("Ruby!"))
    end

end
