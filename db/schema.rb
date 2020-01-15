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

ActiveRecord::Schema.define(version: 2020_01_15_052125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string "title"
    t.integer "type_usr_id"
    t.string "type_card_id"
    t.string "description"
    t.string "image_url"
    t.string "movie_url"
    t.string "link_url"
    t.string "headline"
    t.json "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "text"
    t.integer "visualized"
    t.integer "send_user_id"
    t.integer "recive_user_id"
    t.date "createAt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", force: :cascade do |t|
    t.string "description"
    t.integer "card_id"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_cards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_users", force: :cascade do |t|
    t.integer "type_usr"
    t.string "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "profission"
    t.string "date_nasc"
    t.integer "type_user"
    t.string "email"
    t.string "phone"
    t.string "cpf"
    t.string "addr_state"
    t.string "addr_country"
    t.string "addr_city"
    t.string "addr_street"
    t.string "addr_zipcode"
    t.string "password"
    t.json "data"
    t.string "image_url"
    t.string "movie_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
