#!/usr/bin/env ruby

module NetworkDataTranslator
  class Network
    class Machines
      attr_accessor :config, :machines

      def initialize
        @machines = []
      end

      def add(config)
        objectify(config)
      end

      def objectify(config)
        config.each do |identifier, data|
          @machines.push Machine.new(identifier, data)
        end
      end

      def each
        @machines.each { |machine| yield machine }
      end

      def [](n)
        @machines[n]
      end
    end
  end
end
