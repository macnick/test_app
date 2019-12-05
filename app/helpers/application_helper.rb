module ApplicationHelper
  def gravatar_for(user, options = { size: 120})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    # but I can pass the size I want
    # size = 100
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "img-circle")
  end
end
