class Sponsor < ActiveRecord::Base
    mount_uploader :logo, LogoUploader

  	default_scope { order("priority ASC") }

end
