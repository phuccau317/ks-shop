# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

quan_ao	= Category.find_or_create_by(m_name: "Quần áo, váy, đầm")

	quan 	= Category.find_or_create_by(parent_id: quan_ao.id, m_name: "Quần")
					Category.find_or_create_by(parent_id: quan.id, m_name: "Quần nam")
					Category.find_or_create_by(parent_id: quan.id, m_name: "Quần nữ")
					Category.find_or_create_by(parent_id: quan.id, m_name: "Quần jean")
					Category.find_or_create_by(parent_id: quan.id, m_name: "Quần kaki")
					Category.find_or_create_by(parent_id: quan.id, m_name: "Quần short")

	ao   	= Category.find_or_create_by(parent_id: quan_ao.id, m_name: "Áo")
					Category.find_or_create_by(parent_id: ao.id, m_name: "Áo nam")
					Category.find_or_create_by(parent_id: ao.id, m_name: "Áo nữ")
					Category.find_or_create_by(parent_id: ao.id, m_name: "Áo thun")
					Category.find_or_create_by(parent_id: ao.id, m_name: "Áo sơ mi")
					Category.find_or_create_by(parent_id: ao.id, m_name: "Váy, đầm")

giaydep_balo_tuixach	= Category.find_or_create_by(m_name: "Giày Dép - Balo - Túi Xách")
					Category.find_or_create_by(parent_id: giaydep_balo_tuixach.id, m_name: "Giày Dép")
					Category.find_or_create_by(parent_id: giaydep_balo_tuixach.id, m_name: "Balo")
					Category.find_or_create_by(parent_id: giaydep_balo_tuixach.id, m_name: "Túi Xách")

amthuc_dinhduong	= Category.find_or_create_by(m_name: "Ẩm thực - dinh dưỡng")

	Category.find_or_create_by(parent_id: amthuc_dinhduong.id, m_name: "Thức ăn")
	Category.find_or_create_by(parent_id: amthuc_dinhduong.id, m_name: "Đồ uống")
	Category.find_or_create_by(parent_id: amthuc_dinhduong.id, m_name: "Địa điểm")

nghethuat_thugian = Category.find_or_create_by(m_name: "Nghệ thuật & Thư giản")
				Category.find_or_create_by(parent_id: nghethuat_thugian.id, m_name: "Hoa vải")
				Category.find_or_create_by(parent_id: nghethuat_thugian.id, m_name: "Hoa tươi")

dt	= Category.find_or_create_by(m_name: "Điện thoại di động")

	Category.find_or_create_by(parent_id: dt.id, m_name: "IPhone")
	Category.find_or_create_by(parent_id: dt.id, m_name: "Nokia")
	Category.find_or_create_by(parent_id: dt.id, m_name: "LG")
	Category.find_or_create_by(parent_id: dt.id, m_name: "Samsung")

kts_tt	= Category.find_or_create_by(m_name: "Kỹ thuật số, truyền thông")

		tv     = Category.find_or_create_by(parent_id: kts_tt.id, m_name: "TV")
  	audio  = Category.find_or_create_by(parent_id: kts_tt.id, m_name: "Audio")
  	video  = Category.find_or_create_by(parent_id: kts_tt.id, m_name: "Video")
  	camera = Category.find_or_create_by(parent_id: kts_tt.id, m_name: "Camera")

maytinh_phukien = Category.find_or_create_by(m_name: "Máy tính và Phụ kiện")
				Category.find_or_create_by(parent_id: maytinh_phukien.id, m_name: "Laptop - Máy vi tính")
				Category.find_or_create_by(parent_id: maytinh_phukien.id, m_name: "Desktop - Máy bàn")
				Category.find_or_create_by(parent_id: maytinh_phukien.id, m_name: "Bàn phím - Chuột")
				Category.find_or_create_by(parent_id: maytinh_phukien.id, m_name: "Loa - Tai nghe")
				Category.find_or_create_by(parent_id: maytinh_phukien.id, m_name: "CPU")
				Category.find_or_create_by(parent_id: maytinh_phukien.id, m_name: "Phụ kiện khác")

# bat_dong_san	= Category.find_or_create_by(m_name: "Bất động sản")

# 	canho_chungcu	= Category.find_or_create_by(parent_id: bat_dong_san.id, m_name: "Căn hộ/Chung cư")
# 	canho_chungcu	= Category.find_or_create_by(parent_id: bat_dong_san.id, m_name: "Nhà & Đất ở")
# 	canho_chungcu	= Category.find_or_create_by(parent_id: bat_dong_san.id, m_name: "Cơ sở thương mại")
# 	canho_chungcu	= Category.find_or_create_by(parent_id: bat_dong_san.id, m_name: "Đất nông nghiệp & trang trại")
# 	canho_chungcu	= Category.find_or_create_by(parent_id: bat_dong_san.id, m_name: "Phòng cho thuê")


Category.all.each_with_index do |category, i|
	7.times do |index|
		Product.create(
			m_name: "#{category.m_name} #{index}", 
			m_description: "#{category.m_name} #{index} description.", 
			m_price: ((i+index)*250), 
			category_id: category.id, 
			m_attributes: "[]")
	end
end