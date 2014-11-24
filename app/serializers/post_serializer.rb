class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :author, :categories, :tags, :date, :published, :created_at, :updated_at
end
