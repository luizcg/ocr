# Rails File Upload with OCR

This is a Ruby on Rails application that demonstrates how to implement file upload using Active Storage and perform Optical Character Recognition (OCR) using the `rtesseract` gem.

## Features

- Upload files (e.g., images, PDFs) using Active Storage
- Perform OCR on uploaded files to extract text
- Display the extracted text on the document show page

## Requirements

- Ruby 3.0.0 or later
- Rails 6.0 or later
- Tesseract OCR

## Getting Started

### Prerequisites

Ensure you have the following installed:

- Ruby
- Rails
- Tesseract OCR

#### Installing Tesseract OCR

**macOS:**

```sh
brew install tesseract
```

**Ubuntu:**

```sh
sudo apt-get install tesseract-ocr
```

**Windows:**

Download the installer from the [Tesseract at UB Mannheim page](https://github.com/UB-Mannheim/tesseract/wiki) and follow the installation instructions.

### Installation

1. Clone the repository:

```sh
git clone https://github.com/your-username/rails-file-upload-ocr.git
cd rails-file-upload-ocr
```

2. Install dependencies:

```sh
bundle install
```

3. Set up the database:

```sh
rails db:create
rails db:migrate
```

### Usage

1. Start the Rails server:

```sh
rails server
```

2. Navigate to `http://localhost:3000` in your web browser.

3. Upload a new document by visiting `http://localhost:3000/documents/new`.

4. After uploading, the OCR text will be displayed on the document show page.

### Project Structure

- `app/models/document.rb`: Model representing the Document with file attachment and OCR method.
- `app/controllers/documents_controller.rb`: Controller handling document upload and OCR.
- `app/views/documents/new.html.erb`: Form for uploading a new document.
- `app/views/documents/show.html.erb`: View displaying the uploaded document and OCR text.

### Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Open a pull request

### License

This project is licensed under the MIT License.

### Acknowledgments

- [Active Storage](https://guides.rubyonrails.org/active_storage_overview.html)
- [RTesseract Gem](https://github.com/dannnylo/rtesseract)
