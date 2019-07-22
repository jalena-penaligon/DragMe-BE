class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :password, :email
  end
  