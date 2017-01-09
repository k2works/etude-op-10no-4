require 'rack/test'
require 'rspec'
require 'sinatra/base'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../app/helpers/application_helper.rb', __FILE__
require File.expand_path '../../app/controllers/application_controller.rb', __FILE__
require File.expand_path '../../app/controllers/index_controller.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() IndexController end
end

# For RSpec 2.x and 3.x
RSpec.configure { |c| c.include RSpecMixin }