class Resource < ActiveRecord::Base
	mount_uploaders :attachments, AttachmentUploader
	serialize :attachments, JSON

	mount_uploader :preview, PreviewUploader
end
