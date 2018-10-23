json.extract! student, :id, :nombre, :apellido, :documento, :tipo_estudiante, :promedio, :Schedule_id, :User_id, :School_id, :Semester_id, :created_at, :updated_at
json.url student_url(student, format: :json)
