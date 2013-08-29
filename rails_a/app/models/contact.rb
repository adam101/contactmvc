class Contact < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  validates :name,
    presence: true,
    length: { maximum: 200.bytes }

  # TODO phone validation
  #validates :phone
  # TODO email validation
  #validates :email
  def picture_changed?
    true
  end

end
