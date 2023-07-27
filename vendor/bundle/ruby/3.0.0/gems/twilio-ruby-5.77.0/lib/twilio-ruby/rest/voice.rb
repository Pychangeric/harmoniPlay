##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Voice < Domain
      ##
      # Initialize the Voice Domain
      def initialize(twilio)
        super

        @base_url = 'https://voice.twilio.com'
        @host = 'voice.twilio.com'
        @port = 443

        # Versions
        @v1 = nil
      end

      ##
      # Version v1 of voice
      def v1
        @v1 ||= V1.new self
      end

      ##
      # @param [String] sid The call sid
      # @return [Twilio::REST::Voice::V1::ArchivedCallInstance] if sid was passed.
      # @return [Twilio::REST::Voice::V1::ArchivedCallList]
      def archived_calls(date=:unset, sid=:unset)
        self.v1.archived_calls(date, sid)
      end

      ##
      # @param [String] sid The unique string that that we created to identify the BYOC
      #   Trunk resource.
      # @return [Twilio::REST::Voice::V1::ByocTrunkInstance] if sid was passed.
      # @return [Twilio::REST::Voice::V1::ByocTrunkList]
      def byoc_trunks(sid=:unset)
        self.v1.byoc_trunks(sid)
      end

      ##
      # @param [String] sid The unique string that we created to identify the Connection
      #   Policy resource.
      # @return [Twilio::REST::Voice::V1::ConnectionPolicyInstance] if sid was passed.
      # @return [Twilio::REST::Voice::V1::ConnectionPolicyList]
      def connection_policies(sid=:unset)
        self.v1.connection_policies(sid)
      end

      ##
      # @return [Twilio::REST::Voice::V1::DialingPermissionsInstance]
      def dialing_permissions
        self.v1.dialing_permissions()
      end

      ##
      # @param [String] sid The unique string that we created to identify the IP Record
      #   resource.
      # @return [Twilio::REST::Voice::V1::IpRecordInstance] if sid was passed.
      # @return [Twilio::REST::Voice::V1::IpRecordList]
      def ip_records(sid=:unset)
        self.v1.ip_records(sid)
      end

      ##
      # @param [String] sid The unique string that we created to identify the IP Record
      #   resource.
      # @return [Twilio::REST::Voice::V1::SourceIpMappingInstance] if sid was passed.
      # @return [Twilio::REST::Voice::V1::SourceIpMappingList]
      def source_ip_mappings(sid=:unset)
        self.v1.source_ip_mappings(sid)
      end

      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio::REST::Voice>'
      end
    end
  end
end