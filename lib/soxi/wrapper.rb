require "soxi/wrapper/version"
require "soxi/wrapper/file"
require 'open3'

module Soxi
  module Wrapper
    def self.file filename
      raise 'soxi not installed' unless soxi_exists?
      File.new filename
    end

    def self.soxi_exists?
      `which soxi` != ''
    end
  end
end
