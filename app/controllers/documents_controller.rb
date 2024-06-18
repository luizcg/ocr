# app/controllers/documents_controller.rb
class DocumentsController < ApplicationController
    def new
      @document = Document.new
    end
  
    def create
      @document = Document.new(document_params)
      if @document.save
        redirect_to @document, notice: 'Document was successfully uploaded.'
      else
        render :new
      end
    end
  
    def show
        @document = Document.find(params[:id])
        @ocr_text = @document.perform_ocr
    end
  
    private
  
    def document_params
      params.require(:document).permit(:title, :file)
    end
  end
  