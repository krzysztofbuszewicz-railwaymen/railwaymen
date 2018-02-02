require 'rails/generators'

module Railwaymen
  class InstallGenerator < ::Rails::Generators::Base
    namespace 'railwaymen:install'
    source_root File.expand_path('../templates', __FILE__)
    desc 'Generates railwaymen gem initializer.'

    def install
      template 'initializer.rb', 'config/initializers/railwaymen.rb'
    end
  end
end
