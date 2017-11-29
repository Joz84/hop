module ApplicationHelper
  def title(text)
    content_for :title, text
  end

  def cl_image_path_or_default(image, options = {})
    if image
      cl_image_path image.path, options
    else
      'https://res.cloudinary.com/dy4rog9h0/image/upload/v1511951967/qnudk7b6khwivnairedi.jpg'
    end
  end

  def cl_image_tag_or_default(image, options = {})
    if image
      cl_image_tag image.path, options
    else
      image_tag 'https://res.cloudinary.com/dy4rog9h0/image/upload/v1511953517/dorothee_yusfkt.png', options
    end
  end
end
