# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'User作成'
# User.delete_all
Prefecture.create!(large_service_area:'SS10', code:'Z011', name: '東京')
Prefecture.create!(large_service_area:'SS10', code:'Z012', name: '神奈川')
Prefecture.create!(large_service_area:'SS10', code:'Z013', name: '埼玉')
Prefecture.create!(large_service_area:'SS10', code:'Z014', name: '千葉')
Prefecture.create!(large_service_area:'SS10', code:'Z015', name: '茨城')
Prefecture.create!(large_service_area:'SS10', code:'Z016', name: '栃木')
Prefecture.create!(large_service_area:'SS10', code:'Z017', name: '群馬')
Prefecture.create!(large_service_area:'SS20', code:'Z021', name: '滋賀')
Prefecture.create!(large_service_area:'SS20', code:'Z022', name: '京都')
Prefecture.create!(large_service_area:'SS20', code:'Z023', name: '大阪')
Prefecture.create!(large_service_area:'SS20', code:'Z024', name: '兵庫')
Prefecture.create!(large_service_area:'SS20', code:'Z025', name: '奈良')
Prefecture.create!(large_service_area:'SS20', code:'Z026', name: '和歌山')
Prefecture.create!(large_service_area:'SS30', code:'Z031', name: '岐阜')
Prefecture.create!(large_service_area:'SS30', code:'Z032', name: '静岡')
Prefecture.create!(large_service_area:'SS30', code:'Z033', name: '愛知')
Prefecture.create!(large_service_area:'SS30', code:'Z034', name: '三重')
Prefecture.create!(large_service_area:'SS40', code:'Z041', name: '北海道')
Prefecture.create!(large_service_area:'SS50', code:'Z051', name: '青森')
Prefecture.create!(large_service_area:'SS50', code:'Z052', name: '岩手')
Prefecture.create!(large_service_area:'SS50', code:'Z053', name: '宮城')
Prefecture.create!(large_service_area:'SS50', code:'Z054', name: '秋田')
Prefecture.create!(large_service_area:'SS50', code:'Z055', name: '山形')
Prefecture.create!(large_service_area:'SS50', code:'Z056', name: '福島')
Prefecture.create!(large_service_area:'SS60', code:'Z061', name: '新潟')
Prefecture.create!(large_service_area:'SS60', code:'Z062', name: '富山')
Prefecture.create!(large_service_area:'SS60', code:'Z063', name: '石川')
Prefecture.create!(large_service_area:'SS60', code:'Z064', name: '福井')
Prefecture.create!(large_service_area:'SS60', code:'Z065', name: '山梨')
Prefecture.create!(large_service_area:'SS60', code:'Z066', name: '長野')
Prefecture.create!(large_service_area:'SS70', code:'Z071', name: '鳥取')
Prefecture.create!(large_service_area:'SS70', code:'Z072', name: '島根')
Prefecture.create!(large_service_area:'SS70', code:'Z073', name: '岡山')
Prefecture.create!(large_service_area:'SS70', code:'Z074', name: '広島')
Prefecture.create!(large_service_area:'SS70', code:'Z075', name: '山口')
Prefecture.create!(large_service_area:'SS80', code:'Z081', name: '徳島')
Prefecture.create!(large_service_area:'SS80', code:'Z082', name: '香川')
Prefecture.create!(large_service_area:'SS80', code:'Z083', name: '愛媛')
Prefecture.create!(large_service_area:'SS80', code:'Z084', name: '高知')
Prefecture.create!(large_service_area:'SS90', code:'Z091', name: '福岡')
Prefecture.create!(large_service_area:'SS90', code:'Z092', name: '佐賀')
Prefecture.create!(large_service_area:'SS90', code:'Z093', name: '長崎')
Prefecture.create!(large_service_area:'SS90', code:'Z094', name: '熊本')
Prefecture.create!(large_service_area:'SS90', code:'Z095', name: '大分')
Prefecture.create!(large_service_area:'SS90', code:'Z096', name: '宮崎')
Prefecture.create!(large_service_area:'SS90', code:'Z097', name: '鹿児島')
Prefecture.create!(large_service_area:'SS90', code:'Z098', name: '沖縄')