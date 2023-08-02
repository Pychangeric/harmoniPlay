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

ActiveRecord::Schema[7.0].define(version: 2023_07_26_064247) do
>>>>>>>>> Temporary merge branch 2
  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "about"
    t.integer "music_id"
    t.integer "playlist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["music_id"], name: "index_artists_on_music_id"
    t.index ["playlist_id"], name: "index_artists_on_playlist_id"
  end

  create_table "musics", force: :cascade do |t|
    t.string "title"
    t.string "avatar"
    t.string "genre"
    t.string "album"
    t.string "video"
<<<<<<<<< Temporary merge branch 1
<
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_musics_on_artist_id"
    t.index ["playlist_id"], name: "index_musics_on_playlist_id"
    t.index ["user_id"], name: "index_musics_on_user_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.binary "avatar"
=========
>>>>>>>>> Temporary merge branch 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<<<< Temporary merge branch 1
=========
  create_table "playlists", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.binary "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>>>> Temporary merge branch 2
  create_table "recommendations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recommendations_on_user_id"
  end

  create_table "search_histories", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "query"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_search_histories_on_user_id"
  end

<<<<<<<<< Temporary merge branch 1
  create_table "shares", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "platform"
    t.string "share_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=========
>>>>>>>>> Temporary merge branch 2
  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<<<< Temporary merge branch 1

  add_foreign_key "artists", "musics", column: "music_id"
  add_foreign_key "artists", "playlists", column: "playlist_id"
  add_foreign_key "musics", "artists", column: "artist_id"
  add_foreign_key "musics", "playlists", column: "playlist_id"
  add_foreign_key "musics", "users", column: "user_id"
  add_foreign_key "recommendations", "users", column: "user_id"
  add_foreign_key "search_histories", "users", column: "user_id"
  add_foreign_key "shares", "users", column: "user_id"
=========
  add_foreign_key "recommendations", "users"
  add_foreign_key "search_histories", "users"
>>>>>>>>> Temporary merge branch 2
end
