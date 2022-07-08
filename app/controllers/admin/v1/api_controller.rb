class Admin::V1::ApiController < ApplicationController
  module Admin::V1
    class ApiController < ApplicationController
      include Authenticatable
    end
  end
end
