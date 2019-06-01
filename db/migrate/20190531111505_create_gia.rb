class CreateGia < ActiveRecord::Migration[5.1]
  def change
    create_table "gias", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
      t.integer "san_phams_id", null: false
      t.datetime "ngay_doi", null: false
      t.float "gia", limit: 24, null: false
      t.string "ghi_chu", limit: 500, null: false
    end
  end
end
