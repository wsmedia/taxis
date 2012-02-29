require 'rails/generators'

module Taxis

  class InstallGenerator < Rails::Generators::Base
    desc "Installs the javascript files and creates the database migrations for taxis"

    class_option :skip_jquery, :type => :boolean, :default => false, :desc => "Skip the jQuery Install"

    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'public')
    end

    def dependent_gems
      
    end

    
    def copy_taxonomy_js
      copy_file 'taxonomy.js', 'app/assets/javascripts/taxonomy.js'
    end

    def run_migration_install
      generate "taxis:migration"
    end



  end
end
