module LinksHelper

  def link_to_self(object, options = {})
    link_to(object, object, options)
  end

end
