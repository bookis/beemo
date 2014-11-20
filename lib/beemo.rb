require 'httparty'

module Beemo
  def self.configuration
    @configuration ||= {}
  end

  def configure(hash)
    @configuration = {}
  end
end

require_relative "beemo/version"
require_relative "beemo/user"
