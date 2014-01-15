module Jekyll
  module Foundation
    class Configuration < Jekyll::Configuration
      DEFAULTS.deep_merge!({
        'foundation' => {
          'auto_install' => false,
          'type' => 'scss',
          'version' => '',
          'sass_path' => '_sass'
        }
      })
    end
  end
end
