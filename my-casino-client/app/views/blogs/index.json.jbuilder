json.array!(@blogs) do |blog|
  json.extract! blog, :id, :date_on, :title, :content
  json.url blog_url(blog, format: :json)
end
