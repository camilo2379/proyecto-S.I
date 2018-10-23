require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { Schedule_id: @student.Schedule_id, School_id: @student.School_id, Semester_id: @student.Semester_id, User_id: @student.User_id, apellido: @student.apellido, documento: @student.documento, nombre: @student.nombre, promedio: @student.promedio, tipo_estudiante: @student.tipo_estudiante } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { Schedule_id: @student.Schedule_id, School_id: @student.School_id, Semester_id: @student.Semester_id, User_id: @student.User_id, apellido: @student.apellido, documento: @student.documento, nombre: @student.nombre, promedio: @student.promedio, tipo_estudiante: @student.tipo_estudiante } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
