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

ActiveRecord::Schema.define(version: 2019_02_14_211951) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "client_type"
    t.string "poc_name"
    t.string "poc_email"
    t.string "poc_number"
    t.integer "partner_id"
    t.string "status"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "invoice_number"
    t.date "invoice_date"
    t.date "due_date"
    t.text "invoice_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
    t.decimal "total_amount", precision: 8, scale: 2
    t.string "status"
  end

  create_table "partners", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_partners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_partners_on_reset_password_token", unique: true
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "invoice_id"
    t.decimal "baserate", precision: 8, scale: 2
  end

end
