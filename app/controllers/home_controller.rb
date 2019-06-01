class HomeController < ApplicationController
  def index
    # @products=SanPham.execute_sql("select TenSp ,MaLoai from products", "")
    @products_nam=SanPham.joins('LEFT JOIN gias ON san_phams.id = gias.san_pham_id INNER JOIN loais ON san_phams.loai_id = loais.id').where('loais.gioi_tinh=1').limit(4).select("san_phams.ten_sanpham as ten_sanpham,san_phams.hinh_anh as hinh_anh, gias.gia AS gia")
    @products_nu=SanPham.joins('LEFT JOIN gias ON san_phams.id = gias.san_pham_id INNER JOIN loais ON san_phams.loai_id = loais.id').where('loais.gioi_tinh=2').limit(4).select("san_phams.ten_sanpham as ten_sanpham,san_phams.hinh_anh as hinh_anh, gias.gia AS gia")
  end
end
