# Blog
Time.zone = "Asia/Bangkok"

activate :blog do |blog|
  blog.permalink = "posts/{title}.html"
  blog.sources = "posts/{year}-{month}-{day}-{title}.html"
  blog.taglink = "tags/{tag}.html"
  blog.default_extension = ".erb"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  blog.paginate = false
end

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end


# Helpers
helpers do
  def post_time(article)
    time_text = [article.date.strftime('%Y-%m-%d'), article.data.time]
    content_tag :div, class: 'post-time' do
      [
        content_tag(:i, '', class: 'fa fa-clock-o'),
        content_tag(:abbr, time_text.join(' '), title: time_text.join('T'))
      ].join.html_safe
    end
  end

  def post_tags(article)
    content_tag :div, class: 'post-tags' do
      [
        content_tag(:i, '', class: 'fa fa-tags'),
        article.tags.join(', ').html_safe
        # article.tags.map { |tag| link_to(tag, tag_path(tag)) }.join(', ').html_safe
      ].join.html_safe
    end
  end
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
