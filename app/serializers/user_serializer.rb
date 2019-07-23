class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :password_digest, :email
  end
  