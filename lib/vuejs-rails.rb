require "vuejs-rails/version"

module Vue
  mattr_accessor :development_mode
  self.development_mode = defined?(::Rails) && ::Rails.env.development?

  class << self
    def full_or_minified(asset_name)
      development_mode ? "dist/#{asset_name}.js": "dist/#{asset_name}.min.js"
    end
  end

  module Rails
    require "vuejs-rails/engine" if defined?(::Rails) and Gem::Requirement.new('>= 3.1').satisfied_by?(Gem::Version.new ::Rails.version)
  end
end
