class PagesController < ApplicationController
  def home
    @qrcode = Qrcode.new
  end
end
