# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Helpers
helpers do
end

# Autoprefixer
activate :autoprefixer do |config|
  config.browsers = ['> 1%', 'last 2 versions', 'Firefox ESR', 'Opera 12.1']
end

# Pretty URLs
activate :directory_indexes

# Dirs
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end
