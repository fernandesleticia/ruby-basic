module UsingBcrypt
  require 'bcrypt'

  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(users)
    users.each do |user|
      user[:password] = create_hash_digest(user[:password])
    end

    users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user|
      if user[:username] == username && 
        verify_hash_digest(user[:password]) == password
        return user
      end
    end

    'Credentails were not correct'
  end
end
