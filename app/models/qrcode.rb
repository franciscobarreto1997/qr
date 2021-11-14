class Qrcode < ApplicationRecord
  validates_presence_of :name, :url, :image

  def info
    "Hello! Im a QR code for #{self.name}, visit me at #{self.url}"
  end
end
