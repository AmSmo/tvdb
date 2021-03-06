# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_16_202506) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
  end

  create_table "episode_character_actors", force: :cascade do |t|
    t.integer "episode_id"
    t.integer "character_id"
    t.integer "actor_id"
  end

  create_table "episode_directors", force: :cascade do |t|
    t.integer "episode_id"
    t.integer "director_id"
  end

  create_table "episode_writers", force: :cascade do |t|
    t.integer "episode_id"
    t.integer "writer_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.integer "season_id"
    t.integer "episode_num"
    t.datetime "air_date"
    t.string "title"
    t.string "plot"
    t.float "rating"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "season_number"
    t.integer "series_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "series_name"
  end

  create_table "writers", force: :cascade do |t|
    t.string "name"
  end

end
