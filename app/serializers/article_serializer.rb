class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :article_text
  has_one :user
end
