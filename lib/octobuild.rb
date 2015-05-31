require 'octobuild/version'
require 'xcode/install'

module Octobuild
  class Builder
    def initialize
      @installer = XcodeInstall::Installer.new
    end

    def build(versions = nil)
      versions = requested_versions if versions.nil?
      versions.each do |version|
        puts "Building with Xcode #{version}..."
        xcode = @installer.installed_versions.find { |x| x.version == version }

        if xcode.nil?
          puts 'Installing Xcode...'
          @installer.install_version(version, false)
        end

        system(command(xcode))
      end
    end

    private

    def command(xcode)
      "DEVELOPER_DIR='#{xcode.path}' #{ARGV.join(' ')}"
    end

    def requested_versions
      if ENV['VERSIONS'].nil?
        @installer.installed_versions.map(&:version)
      else
        ENV['VERSIONS'].split(' ')
      end
    end
  end
end
