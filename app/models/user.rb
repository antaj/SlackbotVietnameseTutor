class User < ActiveRecord::Base
  # attr_accessible :locale, :username

  validates :locale, inclusion: {in: %w(en vi)}
end
