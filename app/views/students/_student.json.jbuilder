json.extract! student, :id, :name, :grade_id, :institute_id, :teacher_id, :created_at, :updated_at
json.url student_url(student, format: :json)
