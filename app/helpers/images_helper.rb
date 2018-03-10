module ImagesHelper
  # Example usage:
  #
  #   image_set_tag_3x "foo_1x.png", alt: "foo"
  #
  # Will assume there is a 2x and 3x version and provide those automagically.
  #
  # Based on https://gist.github.com/mrreynolds/4fc71c8d09646567111f
  def image_set_tag_3x(source, options = {})
    srcset = [ 2, 3 ].map { |num|
      name = source.sub("_1x.", "_#{num}x.")
      "#{path_to_image(name)} #{num}x"
    }.join(", ")

    image_tag(source, options.merge(srcset: srcset))
  end
end