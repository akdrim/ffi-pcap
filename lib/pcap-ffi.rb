begin
  require 'rubygems'
rescue LoadError
end

require 'ffi/dry'
require 'ffi/packets'

module FFI
  module PCap
    extend FFI::Library

    ffi_lib "libpcap"
  end
end

require 'pcap-ffi/version'

require 'pcap-ffi/typedefs'

require 'pcap-ffi/bsd'
require 'pcap-ffi/addr'
require 'pcap-ffi/interface'
require 'pcap-ffi/file_header'
require 'pcap-ffi/time_val'
require 'pcap-ffi/packet_header'
require 'pcap-ffi/stat'
require 'pcap-ffi/bpf'
require 'pcap-ffi/dumper'
require 'pcap-ffi/error_buffer'

require 'pcap-ffi/functions'

require 'pcap-ffi/data_link'
require 'pcap-ffi/packet'
require 'pcap-ffi/handler'

