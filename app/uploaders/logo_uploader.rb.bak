class LogoUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  version :landscape, if: :is_landscape?

  version :portrait, if: :is_portrait?

  version :landscape do
      process resize_to_fit: [200, 50]
  end

  version :landscape_sm, from_version: :landscape do
      process resize_to_fit: [100, 25]
  end

  version :portrait do
      process resize_to_fit: [50, 200]
  end

  version :portrait_sm, from_version: :portrait do
      process resize_to_fit: [25, 100]
  end

  
  

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

  private 

    def is_landscape? picture
      image = MiniMagick::Image.open(picture.path)
      image[:width] > image[:height]
    end

    def is_portrait? picture
      image = MiniMagick::Image.open(picture.path)
      image[:width] < image[:height]
    end


  end


