class Comment
  include Mongoid::Document
  field :title, type: String
  field :comment, type: String

  embedded_in :post, :inverse_of => :comments
end
