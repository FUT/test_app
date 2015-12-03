class Post < ActiveRecord::Base
  has_many :pictures, as: :owner

  def to_param
    "#{id}-super-param"
  end
end
