json.extract! student, :id, :codigo, :nombre, :apellido, :user_id, :program_id, :created_at, :updated_at
json.url student_url(student, format: :json)
