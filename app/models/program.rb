class Program < ActiveRecord::Base
  
  default_scope { order('created_at DESC') } 
  
  has_many :episodes
  
  def self.from_param(param)
    find_by_slug!(param)
  end

  def to_param
    slug
  end
end
