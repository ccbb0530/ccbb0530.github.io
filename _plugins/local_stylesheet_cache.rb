# Include this site's stylesheet override in the theme's cache version.
# al_folio_core 1.0.15 versions Sass partials, but omits assets/css/main.scss.
require 'digest'
require 'jekyll-cache-bust'

module LocalStylesheetCache
  def bust_css_cache(file_name)
    versioned_url = super
    stylesheet = @context.registers[:site].in_source_dir('assets/css/main.scss')
    return versioned_url unless File.file?(stylesheet)

    "#{versioned_url}&site=#{Digest::SHA256.file(stylesheet).hexdigest[0, 16]}"
  end
end

Jekyll::CacheBust.prepend(LocalStylesheetCache)
