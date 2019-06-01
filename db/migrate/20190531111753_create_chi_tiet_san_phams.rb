class CreateChiTietSanPhams < ActiveRecord::Migration[5.1]
  def change
    create_table "chi_tiet_san_phams", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
      t.integer "san_pham_id", null: false
      t.integer "size_id", null: false
      t.integer "mau_sac_id", null: false
      t.integer "phieu_nhap_id", null: false
      t.index ["san_pham_id"], name: "sp_ctsp"

      t.timestamps
    end
  end
end