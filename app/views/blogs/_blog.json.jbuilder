json.extract! blog, :id, :title, :description, :comments, :tag, :created_at, :updated_at
json.url blog_url(blog, format: :json)
