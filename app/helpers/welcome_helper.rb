require 'gon'
module WelcomeHelper

  def image_urls
    gon.image1 = image_url('1.jpg')
    gon.image2 = image_url('2.jpg')
  end
end
