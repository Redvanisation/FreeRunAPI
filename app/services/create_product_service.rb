class CreateProductService
  def initialize(product, params)
    @params = params
    @product = Product.new(@params)
  end

  def call
    if @params[:image] && !file?(@params[:image])
      delete_image if @product.image.attached?
      @params.delete(:image)
    end

    @product.save
    @product.image.attach(@params[:image])
  end

  private

  def file?(param)
    param.is_a?(ActionDispatch::Http::UploadedFile)
  end

  def delete_image
    @product.image.purge
  end
end