# code here!
class School

    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new{ |h, k| h[k] = []}
    end

    def add_student(student_name, grade)
            @roster[grade] << student_name
    end

    def grade(student_name)
        roster[student_name]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
    sorted
    end
end