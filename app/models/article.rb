class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :article_tags, dependent: :destroy
  has_many :tags, through: :article_tags
end
