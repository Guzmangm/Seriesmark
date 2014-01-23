class Series < ActiveRecord::Base

  validates_presence_of :title
  has_many :seasons, :dependent => :destroy
  has_many :episodes, :through => :seasons
  belongs_to :genre
  belongs_to :country
  
  # after the person has been written to the database, deal with
  # writing any image data to the filesystem
  after_save :store_photo
  
  # File.join is a cross-platform way of joining directories;
  # we could have written "#{Rails.root}/public/photo_store"
  PHOTO_STORE = File.join Rails.root, 'public', 'photo_store'
  # where to write the image file to
  def photo_filename
  	File.join PHOTO_STORE, "#{id}.#{extension}"
  end
  # return a path we can use in HTML for the image
  def photo_path
  	"/photo_store/#{id}.#{extension}"
  end

  # if a photo file exists, then we have a photo
  def has_photo?
    File.exists? photo_filename
  end

  # when photo data is assigned via the upload, store the file data
  # for later and assign the file extension, e.g., ".jpg"
  def photo=(file_data)
	unless file_data.blank?
	# store the uploaded data into a private instance variable
	@file_data = file_data
	# figure out the last part of the filename and use this as
	# the file extension. e.g., from "me.jpg" will return "jpg"
	self.extension = file_data.original_filename.split('.').last.downcase
	end
  end

  def unseen_episodes
	episodes.find(:all, :conditions => { :watched => false })
  end

  private
  
  def store_photo
	  if @file_data
		# make the photo_store directory if it doesn't exist already
		FileUtils.mkdir_p PHOTO_STORE
		# write out the image data to the file
		File.open(photo_filename, 'wb') do |f|
		  f.write(@file_data.read)
		end
		# ensure file saved only when it newly arrives at model being saved
		@file_data = nil
	  end
  end
  

end
