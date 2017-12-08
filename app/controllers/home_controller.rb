class HomeController < ApplicationController
  def default
  end
  def save
    Rails.logger.debug { "The params value is #{params['photo']}" }
    fresh = Imagequote.new
    fresh.name = params["Title"]
    fresh.value = params["photo"]
    fresh.save
    @result = fresh
  end
end
