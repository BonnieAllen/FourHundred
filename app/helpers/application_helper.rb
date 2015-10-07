module ApplicationHelper
 def alert_for(flash_type)  
  { success: 'alert-success',
    error: 'alert-danger',
    alert: 'alert-warning',
    notice: 'alert-info'
  }[flash_type.to_sym] || flash_type.to_s
  end

     def form_image_select(post)  
  return image_tag post.image.url(:medium),
                   id: 'image-preview',
                   class: 'img-responsive' if post.image.exists?
      image_tag 'placeholder.jpg', id: 'image-preview', class: 'img-responsive'
  end

      def form_uploaded_file_select(post)  
  return image_tag upload.uploaded_file.url(:medium),
                   id: 'uploaded_file-preview',
                   class: 'img-responsive' if upload.uploaded_file.exists?
      image_tag 'placeholder.jpg', id: 'uploaded_file-preview', class: 'img-responsive'
  end
end