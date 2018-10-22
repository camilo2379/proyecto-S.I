# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181021214552) do

  create_table "credits", force: :cascade do |t|
    t.integer "numero", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "docentes", force: :cascade do |t|
    t.string "nombre", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_docentes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_docentes_on_reset_password_token", unique: true
  end

  create_table "facultads", force: :cascade do |t|
    t.integer "codigo", null: false
    t.string "nombre", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.integer "codigo"
    t.integer "curso_id"
    t.integer "profesor_id"
    t.integer "estudiante_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_grupos_on_curso_id"
    t.index ["estudiante_id"], name: "index_grupos_on_estudiante_id"
    t.index ["profesor_id"], name: "index_grupos_on_profesor_id"
  end

  create_table "horarios", force: :cascade do |t|
    t.string "dia"
    t.string "hora_inicio"
    t.string "hora_fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.float "valor"
    t.integer "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_notes_on_semester_id"
  end

  create_table "profesors", force: :cascade do |t|
    t.integer "documento"
    t.string "nombres"
    t.string "apellidos"
    t.integer "facultad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facultad_id"], name: "index_profesors_on_facultad_id"
  end

  create_table "programas", force: :cascade do |t|
    t.string "nombre"
    t.integer "sede_id"
    t.integer "profesor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profesor_id"], name: "index_programas_on_profesor_id"
    t.index ["sede_id"], name: "index_programas_on_sede_id"
  end

  create_table "programs", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre", limit: 25
    t.integer "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_programs_on_school_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "dia"
    t.time "hora_inicio"
    t.time "hora_fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "nombre", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sedes", force: :cascade do |t|
    t.string "nombre"
    t.integer "profesor_id"
    t.integer "cursos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cursos_id"], name: "index_sedes_on_cursos_id"
    t.index ["profesor_id"], name: "index_sedes_on_profesor_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.integer "numero", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semestres", force: :cascade do |t|
    t.integer "semestre"
    t.date "fecha_inicio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre", limit: 20
    t.string "apellido", limit: 20
    t.integer "documento"
    t.float "promedio"
    t.integer "schedule_id"
    t.integer "user_id"
    t.integer "school_id"
    t.integer "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_students_on_schedule_id"
    t.index ["school_id"], name: "index_students_on_school_id"
    t.index ["semester_id"], name: "index_students_on_semester_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre", limit: 25
    t.integer "credit_id"
    t.integer "note_id"
    t.integer "program_id"
    t.integer "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["credit_id"], name: "index_subjects_on_credit_id"
    t.index ["note_id"], name: "index_subjects_on_note_id"
    t.index ["program_id"], name: "index_subjects_on_program_id"
    t.index ["schedule_id"], name: "index_subjects_on_schedule_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre", limit: 20
    t.string "apellido", limit: 20
    t.integer "school_id"
    t.integer "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_teachers_on_schedule_id"
    t.index ["school_id"], name: "index_teachers_on_school_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
