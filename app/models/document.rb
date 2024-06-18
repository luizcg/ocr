class Document < ApplicationRecord
    has_one_attached :file


    def perform_ocr
        return unless file.attached?
    
        file_path = ActiveStorage::Blob.service.send(:path_for, file.key)
        image = RTesseract.new(file_path, lang: 'por')
        image.to_s
    end


end
