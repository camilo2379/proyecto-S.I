class ArticulosController < ApplicationController
	def new
	end
	def create
	@articulos = Articulo.new(articulos_params)
	@articulos.save
	redirect_to @articulos
	end
	private
		def articulos_params
		params.require(:articulos).permit(:titulo, :mensaje)
  end
	  def show
	  @articulos = Articulo.find(params[:id])
	  end
end
