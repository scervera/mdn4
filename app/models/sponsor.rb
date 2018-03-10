class Sponsor < ActiveRecord::Base
    mount_uploader :logo, LogoUploader

  	default_scope { order("priority ASC") }

  	scope :gold, -> { where(level: '1') }
  	scope :silver, -> { where(level: '2') }

end
