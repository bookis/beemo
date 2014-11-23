class Beemo::User
  include HTTParty
  base_uri "https://api.vimeo.com/"
  attr_accessor :name, :location, :uid, :profile_pics, :url

  def initialize(data)
    @name = data["name"]
    @location = data["location"]
    @uid = data["uri"].split("/").last
    @profile_pics = data["pictures"]
    @url = data["link"]
  end

  def self.default_headers
    {headers: {"Authorization" => "bearer #{Beemo.configuration[:access_token]}"}}
  end

  def self.user_info(uid)
    response = get("/users/#{uid}", default_headers).body
    self.new JSON.parse(response)
  end

  def self.search(query)
    response = get("/users?query=#{query}", default_headers).body
    data = JSON.parse(response)
    data["data"].map {|d| new(d) }
  end

end
