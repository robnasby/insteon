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


	private

    def send_command_to_device(command, address)

    	message = "0262#{address}01#{command}"

      @serial_port.write encode_message(message)
      decode_response @serial_port.read

    end

    def decode_response(response)

    	response.unpack('H*')

		end

    def encode_message(message)

      message.chars.each_slice(2).map {|i| i.join.to_i(16) }.pack('c*')

    end

  end

end