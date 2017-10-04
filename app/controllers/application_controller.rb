class ApplicationController < ActionController::Base
  include SessionsHelper

  protect_from_forgery with: :exception

  before_action :set_locale

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  class << self
    def default_url_options
      {locale: I18n.locale}
    end
  end
end
