class User < ApplicationRecord
  has_secure_password # enable bcrypt for password management
    # requires bcrypt in Gemfile
end
