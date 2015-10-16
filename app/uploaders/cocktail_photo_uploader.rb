class CocktailPhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :fog

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :small do
    process resize_to_fit: [300, 10000]
  end

  version :large do
    process resize_to_fit: [600, 10000]
  end

  version :fullscreen do
    process resize_to_fit: [1024, 10000]
  end
end
