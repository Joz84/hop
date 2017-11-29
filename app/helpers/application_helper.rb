module ApplicationHelper

  def title(text)
    content_for :title, text
  end

  def cl_image_path_or_default(image, options = {})
    if image
      cl_image_path image.path, options
    else
      "http://res.cloudinary.com/dy4rog9h0/image/upload/v1511798148/ymvxzef4dpputt1com2w.jpg"
    end
  end

  def cl_image_tag_or_default(image, options = {})
    if image
      cl_image_tag image.path, options
    else
      image_tag "http://res.cloudinary.com/dy4rog9h0/image/upload/v1511798148/ymvxzef4dpputt1com2w.jpg", options
    end
  end

end
