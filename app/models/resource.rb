class Resource < ActiveRecord::Base
	scope :prioritized, -> { order("priority ASC") }
	
	mount_uploaders :attachments, AttachmentUploader
	serialize :attachments, JSON

	mount_uploader :preview, PreviewUploader
end
