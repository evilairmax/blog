class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :hidden, :created_at
end