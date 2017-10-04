class Fb < User
  class << self
    def user_info hash_auth, user
      user.first_name = hash_auth["first_name"]
      user.email = hash_auth["email"]
      user.password = "123456"
    end

    def from_omniauth auth_hash
      hash_auth = auth_hash
      user = find_or_create_by(uid: hash_auth["uid"],
        provider: auth_hash["provider"])
      user_info hash_auth["info"], user
      user.save!
      user
    end
  end
end
