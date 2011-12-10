require 'parameters/types/object'

module Parameters
  module Types
    class Boolean < Type

      def self.===(value)
        (value == true) || (value == false)
      end

      #
      # Coerces the value into a Boolean.
      #
      # @param [true, false, ::String, ::Symbol, nil] value
      #   The value to coerce.
      #
      # @return [true, false]
      #   The Boolean value.
      #
      def self.coerce(value)
        case value
        when FalseClass, NilClass, 'false', :false
          false
        else
          true
        end
      end

    end
  end
end
