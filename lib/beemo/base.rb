class Beemo::Base
  def initialize(api_key, api_secret, access_token=nil)
    @api_key = api_key
    @api_secret = api_secret
    @access_token = access_token
  end
end
