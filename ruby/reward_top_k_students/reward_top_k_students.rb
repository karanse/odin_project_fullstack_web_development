# @param {String[]} positive_feedback
# @param {String[]} negative_feedback
# @param {String[]} report
# @param {Integer[]} student_id
# @param {Integer} k
# @return {Integer[]}
def top_students(positive_feedback, negative_feedback, report, student_id, k)
  # for each student
  #   get the report of the student and the id of student
  #   check positive feedback
  #   check negative feedback
  #   calculate the point
  # order students by points, ID
  # return top K students from the order

  students = {}
  student_id.each { |id| students[id] = 0 }
  report.each_with_index do |i, idx|
    i.split.each { |word| students[student_id[idx]] += 3 if positive_feedback.include?(word) }
    i.split.each { |word| students[student_id[idx]] -= 1 if negative_feedback.include?(word) }
  end
  students.sort_by {|k, v| [-v, k]}.to_h.keys.first(k)
  end

p top_students(positive_feedback = ["smart","brilliant","studious"], negative_feedback = ["not"], report = ["this student is not studious","the student is smart"], student_id = [1,2], k = 2)
