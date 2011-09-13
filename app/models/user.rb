class User < ActiveResource::Base
  self.site = "http://tumaini.dev"
  # self.site = "http://localhost:3000"
  
  def self.authorized_token?(token)
    begin
      get(:authorize, :auth_token => token )
    rescue
      return nil
    end
  end
end
