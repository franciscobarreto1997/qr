class QrcodesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def generate
    name = params["name"]
    qrcode = {}
    if name != ""
      generate_qr_code(name)
      qrcode = {name: name}
    end
    render json: qrcode
  end

  private

  def generate_qr_code(name)
    url = "https://#{name}.com/"
    image = "app/assets/images/#{name}-qrcode.png"

    qrcode = RQRCode::QRCode.new(url)

    png = qrcode.as_png(
      bit_depth: 1,
      border_modules: 4,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      color: "black",
      file: nil,
      fill: "white",
      module_px_size: 6,
      resize_exactly_to: false,
      resize_gte_to: false,
      size: 120
    )

    IO.binwrite(image, png.to_s)
  end
end
