class HomeController < ApplicationController
  def default
  end
  def save
    File.open('current_image.jpeg', 'wb') do|f|
      f.write(Base64.decode64(params["photo"]))
    end
  end
end
