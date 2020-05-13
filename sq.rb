require 'ffi'
module Sq
  extend FFI::Library
  ffi_lib_flags :lazy, :global
  ffi_lib File.expand_path("./libsq.so", File.dirname(__FILE__))
  attach_function :sq, [:int], :int
end

# test it out
puts Sq.sq(5)