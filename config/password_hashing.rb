require 'digest/shal'
encrypted_password = Digest::SHA1.hexdigest(password)