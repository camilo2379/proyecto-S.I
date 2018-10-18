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

ActiveRecord::Schema.define(version: 20181018062245) do

  create_table "facultads", force: :cascade do |t|
    t.integer "codigo", null: false
    t.string "nombre", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "codgroup", limit: 20
    t.integer "id_subject_id"
    t.integer "id_teacher_id"
    t.integer "id_student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_student_id"], name: "index_groups_on_id_student_id"
    t.index ["id_subject_id"], name: "index_groups_on_id_subject_id"
    t.index ["id_teacher_id"], name: "index_groups_on_id_teacher_id"
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
    t.integer "note"
    t.integer "id_student_id"
    t.integer "id_group_id"
    t.integer "id_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_group_id"], name: "index_notes_on_id_group_id"
    t.index ["id_student_id"], name: "index_notes_on_id_student_id"
    t.index ["id_subject_id"], name: "index_notes_on_id_subject_id"
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
    t.string "codprogram", limit: 20
    t.string "nombre"
    t.integer "id_school_id"
    t.integer "id_teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_school_id"], name: "index_programs_on_id_school_id"
    t.index ["id_teacher_id"], name: "index_programs_on_id_teacher_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "codschedule", limit: 20
    t.string "dias"
    t.string "inicio"
    t.string "fin"
    t.integer "id_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_subject_id"], name: "index_schedules_on_id_subject_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "codschool", limit: 20
    t.string "nombre"
    t.integer "id_teacher_id"
    t.integer "id_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_subject_id"], name: "index_schools_on_id_subject_id"
    t.index ["id_teacher_id"], name: "index_schools_on_id_teacher_id"
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
    t.integer "numero"
    t.date "fecha_inicio"
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
    t.string "codigo", limit: 20
    t.string "nombre", limit: 20
    t.string "apellido", limit: 20
    t.integer "user_id"
    t.integer "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_students_on_program_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "codsubject", limit: 20
    t.string "nombre"
    t.integer "id_credit_id"
    t.integer "id_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_credit_id"], name: "index_subjects_on_id_credit_id"
    t.index ["id_program_id"], name: "index_subjects_on_id_program_id"
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
