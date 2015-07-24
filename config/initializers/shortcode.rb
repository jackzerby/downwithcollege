Shortcode.setup do |config|

  # the template parser to use
  config.template_parser = :erb # :erb, :haml, :slim supported, :erb is default

  # location of the template files, default is "app/views/shortcode_templates"
  config.template_path = "app/views/shared/shortcodes"

  # a list of block tags to support e.g. [quote]Hello World[/quote]
  #config.block_tags = [:audio]

  # a list of self closing tags to support e.g. [youtube id="12345"]
  config.self_closing_tags = [:audio, :embed, :image]

  # the type of quotes to use for attribute values, default is double quotes (")
  config.attribute_quote_type = "'"
end