module Ninefold
  class User
    include Ninefold::Host::Access

    def self.find(host_name=nil)
      name, token = Ninefold::Token.find(host_name)
      token ||= ENV['AUTH_TOKEN']
      new name, token
    end

    attr_accessor :name, :token

    def initialize(name=nil, token=nil)
      @name  = name
      @token = host.token = token
    end

    def signed_in?
      @token != nil
    end

    def signin(username, password)
      response = host.post "/tokens", session: {username: username, password: password}

      if response.ok?
        @name  = username
        @token = host.token = response[:token]
        save
      end
    rescue Ninefold::Host::AccessDenied => e
      @token = host.token = nil
    end

    def save
      Ninefold::Token.save @name, @token
    end

    def delete
      Ninefold::Token.clear
    end
  end
end
