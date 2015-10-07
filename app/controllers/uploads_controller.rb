class UploadsController < ApplicationController
 before_action :set_upload, only: [:show, :edit, :update, :destroy]


  def new
    @upload = Upload.new
    @post = Post.find(params[:post_id])
  end


  def create
    @upload = Upload.create(upload_params.merge(post_id: params[:post_id]))
  end

  private

    def set_upload
      @upload = Upload.find(params[:id])
    end

    def upload_params
      params.require(:upload).permit(:uploaded_file, :image_url, :post_id)
    end
end
