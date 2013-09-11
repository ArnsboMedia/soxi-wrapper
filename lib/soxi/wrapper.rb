require "soxi/wrapper/version"
require "soxi/wrapper/file"

module Soxi
  module Wrapper
    def file filename
      raise 'soxi not installed' unless soxi_exists?
      File.new filename
    end

    def soxi_exists?
      `which soxi` != ''
    end
  end
end
