json.extract! book, :id, :title, :summanry, :genre, :publish_date, :num_pages, :image_url, :authorreference, :created_at, :updated_at
json.url book_url(book, format: :json)
