class Storefront::V1::ApiController < ApplicationController
  module Storefront::V1
    class ApiController < ApplicationController
      include Authenticatable
    end
  end
end
