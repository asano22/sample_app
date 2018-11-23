module UsersHelper

  # 引数で与えられたユーザーのGravatar画像を返す
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    # gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    gravatar_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoc2QRTuu8bDNvcCWE9_eTY60r82eWjZrYQqP1HsExoc3nTWT4"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end