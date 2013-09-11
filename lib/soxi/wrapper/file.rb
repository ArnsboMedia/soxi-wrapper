module Soxi
  module Wrapper
    class File
      attr_reader :filename
      def initialize filename
        @filename = filename
      end

      def filetype
        @filetype ||= run 't'
      end

      def samplerate
        @samplerate ||= run 'r'
      end

      def channels
        @channels ||= run 'c'
      end

      def samples
        @samples ||= run 's'
      end

      def duration
        @duration ||= run 'd'
      end

      def seconds
        @seconds ||= run 'D'
      end


      def bits_per_sample
        @bits_per_sample ||= run 'b'
      end

      def average_bitrate
        @average_bitrate ||= run 'B'
      end

      def encoding
        @encoding ||= run 'e'
      end

      def comments
        @comments ||= run 'a'
      end

      private

      def run option
        `soxy -#{option} #{filename}`.gsub(/\n/,'')
      end
    end
  end
end
