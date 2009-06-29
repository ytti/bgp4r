#--
# Copyright 2008, 2009 Jean-Michel Esnault.
# All rights reserved.
# See LICENSE.txt for permissions.
#
#
# This file is part of BGP4R.
# 
# BGP4R is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# BGP4R is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with BGP4R.  If not, see <http://www.gnu.org/licenses/>.
#++


require 'bgp/attribute'


module BGP

  class Communities < Attr

    class Community
      
      def initialize(arg)
        if arg.is_a?(Symbol)
          case arg
          when :no_export      ; @value=0xFFFFFF01
          when :no_advertise   ; @value=0xFFFFFF02
          when :no_export_sub_confed ; @value=0xFFFFFF03
          when :no_peer        ; @value=0xFFFFFF04
          else
            raise ArgumentError, "invalid argument #{val}"
          end
        elsif arg.is_a?(String) and arg.split(':').size==2
          self.value=arg.split(':').collect { |n| n.to_i }.pack('n2').unpack('N')[0]
        else
          self.value=arg
        end
      end

      def value=(val)
        raise ArgumentError, "invalid argument #{val}" unless val.is_a?(Fixnum) or val.is_a?(Bignum)
        @value=val
      end

      def to_i
        @value
      end

      def to_s
        [@value >> 16, @value & 0xffff].join(':')
      end

      # The community attribute values ranging from 0x0000000 through
      # 0x0000FFFF and 0xFFFF0000 through 0xFFFFFFFF are hereby reserved.
      def is_reserved?
        (0x0000000..0x0000FFFF ) === @value or (0xFFFF0000..0xFFFFFFFF) === @value
      end

      def encode
        [@value].pack('N')
      end

    end

    def initialize(*args)
      @flags, @type = OPTIONAL_TRANSITIVE, COMMUNITIES
      if args[0].is_a?(String) and args[0].is_packed?
        parse(args[0])
      elsif args[0].is_a?(self.class) and args[0].respond_to?(:encode)
        parse(args[0].encode, *args[1..-1])
      else
        add(*args)
      end
    end

    def add(*args)
      @communities ||=[]
      args.flatten.each do |arg|
        if arg.is_a?(String) and arg.split(' ').size>1
          arg.split.each { |v| @communities << Community.new(v) }
        elsif arg.is_a?(String) and arg.split(',').size>1
          arg.split(',').each { |v| @communities << Community.new(v) }
        elsif arg.is_a?(Community)
          @communities << arg
        else
          @communities << Community.new(arg)
        end
      end
    end
    alias << add

    def communities
      @communities.collect { |comm| comm.to_s }.join(' ')
    end

    def to_s(method=:default)
      super(communities, method)
    end

    def to_ary
      @communities.collect { |c| c.to_i }
    end

    def encode
      super(@communities.collect { |comm| comm.encode }.join)
    end

    def parse(s)
      @flags, @type, len, value=super(s)
      self << value.unpack("N#{len/4}")
    end

    def sort
      Communities.new(to_ary.sort)
    end

    def sort!
      @communities = @communities.sort_by { |c| c.to_i }
      self
    end

    def <=>(other)
      self.sort.to_shex <=> other.sort.to_shex
    end

  end

end
load "../test/#{ File.basename($0.gsub(/.rb/,'_test.rb'))}" if __FILE__ == $0