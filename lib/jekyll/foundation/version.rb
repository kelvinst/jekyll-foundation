module Jekyll
  module Foundation
    VERSION = "0.0.1"
    FOUNDATION_VERSION = "5.0.2"

    class Version
      def initialize(str)
        @array = str.split.map!(&:to_i).take(3)
      end

      [:major, :minor, :patch].each_with_index { |value, index| define_method(value) { @array[index] } }

      def to_s
        @array.join '.'
      end
    end
  end
end
