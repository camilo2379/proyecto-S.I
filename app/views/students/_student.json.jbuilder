json.extract! student, :id, :codigo, :nombre, :apellido, :documento, :promedio, :schedule_id, :user_id, :school_id, :semester_id, :created_at, :updated_at
json.url student_url(student, format: :json)
