require_relative 'using_bcrypt'

#if is not on the same directory
#$LOAD_PATH << "."
#require 'using_bcrypt'

users = [{username: 'let', password: '123'},
        {username: 'hugo', password: 'abc'}]
  
hashed_users = UsingBcrypt.create_secure_users(users)
puts hashed_users