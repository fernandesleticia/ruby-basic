require 'bcrypt'

my_password = BCrypt::Password.create('my password')
#"$2a$12$EtPElH68ITAaU6Sw5E9hde1hyrcnbAluL7tW29oNZeBafH1Mg.uja"

#my_password = BCrypt::Password.new('$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey')