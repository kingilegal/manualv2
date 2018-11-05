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

ActiveRecord::Schema.define(version: 2018_11_05_033320) do

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.integer "institute_id"
    t.integer "number_student"
    t.string "director"
    t.string "daytime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institute_id"], name: "index_grades_on_institute_id"
  end

  create_table "guardians", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "email"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_guardians_on_student_id"
  end

  create_table "institutes", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "address"
    t.integer "district_id"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_institutes_on_district_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "type_report"
    t.string "behaivor"
    t.string "brief_description"
    t.date "report_date"
    t.integer "teacher_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_reports_on_student_id"
    t.index ["teacher_id"], name: "index_reports_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "grade_id"
    t.integer "institute_id"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_students_on_grade_id"
    t.index ["institute_id"], name: "index_students_on_institute_id"
    t.index ["teacher_id"], name: "index_students_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.integer "institute_id"
    t.string "subject"
    t.integer "grade_id"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_teachers_on_grade_id"
    t.index ["institute_id"], name: "index_teachers_on_institute_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
