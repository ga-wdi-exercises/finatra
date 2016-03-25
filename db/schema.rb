require_relative "connection"

ActiveRecord::Schema.define do
  create_table :fish, force: :cascade do |t|
    t.string  :name
    t.string  :image_url
    t.text    :description
  end
end
