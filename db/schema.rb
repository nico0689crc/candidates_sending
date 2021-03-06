# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_22_011807) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "contact_email", null: false
    t.string "contact_linked_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "status", default: 1
    t.string "ats_link"
    t.bigint "recruiter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recruiter_id"], name: "index_jobs_on_recruiter_id"
  end

  create_table "jobs_candidates", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.bigint "candidate_id", null: false
    t.integer "status", default: 1
    t.boolean "notifications", default: true
    t.string "token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_jobs_candidates_on_candidate_id"
    t.index ["job_id"], name: "index_jobs_candidates_on_job_id"
  end

  create_table "jobs_candidates_pipelines", force: :cascade do |t|
    t.bigint "jobs_candidate_id", null: false
    t.bigint "pipeline_step_id", null: false
    t.boolean "completed", default: false
    t.text "feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jobs_candidate_id"], name: "index_jobs_candidates_pipelines_on_jobs_candidate_id"
    t.index ["pipeline_step_id"], name: "index_jobs_candidates_pipelines_on_pipeline_step_id"
  end

  create_table "pipeline_steps", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.text "teaser", null: false
    t.string "action_button_label"
    t.string "action_button_url"
    t.integer "order"
    t.integer "status", default: 1
    t.bigint "job_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_pipeline_steps_on_job_id"
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "profile_picture_url"
    t.boolean "status", default: true
    t.string "role", null: false
    t.string "company_name", null: false
    t.string "contact_email", null: false
    t.string "contact_whatsapp"
    t.string "contact_linked_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "jobs", "recruiters"
  add_foreign_key "jobs_candidates", "candidates"
  add_foreign_key "jobs_candidates", "jobs"
  add_foreign_key "jobs_candidates_pipelines", "jobs_candidates"
  add_foreign_key "jobs_candidates_pipelines", "pipeline_steps"
  add_foreign_key "pipeline_steps", "jobs"
end
