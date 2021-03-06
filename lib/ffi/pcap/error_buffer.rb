module FFI
  module PCap
    class ErrorBuffer < FFI::MemoryPointer

      # Size of the error buffers
      SIZE = 256

      #
      # Creates a new {ErrorBuffer} object. Because of wierdness in JRuby
      # when trying to subclass `FFI::Buffer`, always use this instead of
      # {#initialize}.
      #
      # @see http://github.com/ffi/ffi/issues#issue/27
      #
      def self.create()
        new(SIZE)
      end

      #
      # Creates a new {ErrorBuffer} object.
      #
      # @param [Object] nil
      #   The argument is nil and is only present for compatability with
      #   JRuby.
      #
      # @see http://github.com/ffi/ffi/issues#issue/27
      #
      def initialize(arg=nil)
        super(SIZE)
      end

      #
      # Returns the error message within the error buffer.
      #
      def to_s
        get_string(0)
      end

      #
      # Older JRuby/ffi versions of MemoryPointer and Buffer don't have a
      # size method. We override it here to ensure we can use it.
      #
      def size
        begin
          super()
        rescue NoMethodError
          SIZE
        end
      end

    end
  end
end
