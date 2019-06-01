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

ActiveRecord::Schema.define(version: 20190531143410) do

  create_table "chi_tiet_san_phams", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "san_pham_id", null: false
    t.integer "size_id", null: false
    t.integer "mau_sac_id", null: false
    t.integer "phieu_nhap_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["san_pham_id"], name: "sp_ctsp"
  end

  create_table "gias", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "san_pham_id", null: false
    t.datetime "ngay_doi", null: false
    t.float "gia", limit: 24, null: false
    t.string "ghi_chu", limit: 500, null: false
    t.index ["san_pham_id"], name: "fk_rails_2449840b8b"
  end

  create_table "loais", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "ten_loai"
    t.integer "gioi_tinh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "san_phams", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text "ten_sanpham", null: false
    t.string "mo_ta", limit: 500, null: false
    t.string "hinh_anh", limit: 500, null: false
    t.float "gia", limit: 24, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "loai_id"
  end

  add_foreign_key "chi_tiet_san_phams", "san_phams"
  add_foreign_key "gias", "san_phams"
end
