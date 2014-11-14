require 'serialport'

module Insteon

  class Plm

    def initialize(port)

    	params = {
    		"baud"      => 19200,
    		"data_bits" => 8,
    		"stop_bits" => 1,
    		"parity"    => SerialPort::NONE
    	}

      @serial_port = SerialPort.new(port, params)
      @serial_port.read_timeout = 250

    end

  end

end