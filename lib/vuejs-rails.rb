require "vuejs-rails/version"

module Vue
  module Rails
    if defined?(::Rails) and Gem::Requirement.new('>= 3.1').satisfied_by?(Gem::Version.new ::Rails.version)
      class Rails::Engine < ::Rails::Engine
      end
    end
  end
end
