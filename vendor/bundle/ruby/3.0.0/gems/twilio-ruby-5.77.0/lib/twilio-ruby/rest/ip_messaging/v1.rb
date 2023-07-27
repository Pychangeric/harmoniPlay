##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class IpMessaging
      class V1 < Version
        ##
        # Initialize the V1 version of IpMessaging
        def initialize(domain)
          super
          @version = 'v1'
          @credentials = nil
          @services = nil
        end

        ##
        # @param [String] sid The sid
        # @return [Twilio::REST::Ip_messaging::V1::CredentialContext] if sid was passed.
        # @return [Twilio::REST::Ip_messaging::V1::CredentialList]
        def credentials(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @credentials ||= CredentialList.new self
          else
              CredentialContext.new(self, sid)
          end
        end

        ##
        # @param [String] sid The sid
        # @return [Twilio::REST::Ip_messaging::V1::ServiceContext] if sid was passed.
        # @return [Twilio::REST::Ip_messaging::V1::ServiceList]
        def services(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @services ||= ServiceList.new self
          else
              ServiceContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::IpMessaging::V1>'
        end
      end
    end
  end
end