require "vuejs-rails/version"

module Vue
  module Rails
    require "vuejs-rails/engine" if defined?(::Rails) and Gem::Requirement.new('>= 3.1').satisfied_by?(Gem::Version.new ::Rails.version)
  end
end
