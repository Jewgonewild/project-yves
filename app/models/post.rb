class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :message, type: String
  field :user_id, type: String

  belongs_to :user
  embeds_many :comments

  validates_presence_of :user
  validates_presence_of :title
end
