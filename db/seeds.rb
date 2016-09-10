fixtures_path = Rails.root.join('app', 'assets', 'images')

farid = User.create(name: 'Farid', 
					email: 'farid@gmail.com', 
					password: '123456', 
					password_confirmation: '123456')
farid_photo = Photography.create(name: 'Its Farid', 
								 image: File.new(fixtures_path.join('farid.jpg')), 
								 user_id: farid.id)


gilani = User.create(name: 'Gilany', 
					email: 'gilani@gmail.com', 
					password: '123456', 
					password_confirmation: '123456')

gilani_photo = Photography.create(name: 'Its Gilany', 
								 image: File.new(fixtures_path.join('gilani.jpg')), 
								 user_id: gilani.id)


omurbek = User.create(name: 'Omurbek', 
					email: 'omurbek@gmail.com', 
					password: '123456', 
					password_confirmation: '123456')
omurbek_photo = Photography.create(name: 'Its Omurbek', 
								 image: File.new(fixtures_path.join('omurbek.jpg')), 
								 user_id: omurbek.id)