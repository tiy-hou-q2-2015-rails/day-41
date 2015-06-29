class Submittal < ActiveRecord::Base

  validates :photo, :price, :name, :permalink, presence: true
  mount_uploader :photo, PhotoUploader
  include Payola::Sellable

  def redirect_path(sale)
    "/thanks"
  end

end
