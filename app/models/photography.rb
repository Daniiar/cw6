class Photography < ApplicationRecord
<<<<<<< HEAD
	belongs_to :user
	# has_many :comments, dependent: :destroy
	has_attached_file :image,
					  styles: {medium: '300x300>', thumb: '100x100>'},
					  default_url: '/images/:style/missing.png'

	validates_attachment_content_type :image,
	  			content_type: ['image/jpeg', 'image/gif', 'image/png']	
end
=======
end
>>>>>>> 131339d46934b4580b06df02d2c30365ff2a98f9
