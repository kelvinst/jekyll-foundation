require "jekyll"

class Hash

  def deep_merge!(hash)
    hash.keys.each do |key|
      if hash[key].is_a? Hash and self[key].is_a? Hash
        self[key] = deep_merge!(self[key], hash[key])
      else
        self[key] = hash[key]
      end
    end

    self
  end

end

module Jekyll
  module Foundation

      class Configuration < Jekyll::Configuration
        DEFAULTS.deep_merge!({
          'foundation' => {
            'auto_install' => false,
            'version' => '',
            'sass_path' => '_sass',
            'css_path' => 'css'
          }
        })
      end

  end
end
