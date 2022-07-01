class PhotoUploader < CarrierWave::Uploader::Base
    # Include RMagick or MiniMagick support:
    # include CarrierWave::RMagick
    # include CarrierWave::MiniMagick

    include CarrierWave::MiniMagick
    include CarrierWave::ImageOptimizer

    process :optimize
    
    # Choose what kind of storage to use for this uploader:
    storage :file
    # storage :fog

    # Override the directory where uploaded files will be stored.
    # This is a sensible default for uploaders that are meant to be mounted:
    # Local onde será guardado as imagens
    def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

    ## Tamanhos que o CarrierWave vai salvar as imagens

    # Thumb
    version :thumb do
     process resize_to_fit: [50, 50]
    end

    # Medium
    version :medium do
     process resize_to_fit: [150, 150]
    end

    # Big
    version :big do
     process resize_to_fit: [300, 300]
    end

    # Tipos de extensão aceitas
    def extension_whitelist
     %w(jpg jpeg gif png)
    end


    # Override the filename of the uploaded files:
    # Avoid using model.id or version_name here, see uploader/store.rb for details.
    # def filename
    #   "something.jpg" if original_filename
    # end
end