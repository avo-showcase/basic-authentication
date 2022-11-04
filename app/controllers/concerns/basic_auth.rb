# frozen_string_literal: true

module BasicAuth
  extend ActiveSupport::Concern


  included do
    http_basic_authenticate_with name: "dhh", password: "secret"
    before_action :set_current_user
  end

  def set_current_user
    Current.user = OpenStruct.new(name: "DHH")
  end
end
