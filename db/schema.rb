# frozen_string_literal: true

ActiveRecord::Schema.define(version: 2022_02_04_201726) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.text "original_text"
    t.text "translated_text"
    t.datetime "review_date", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
end
