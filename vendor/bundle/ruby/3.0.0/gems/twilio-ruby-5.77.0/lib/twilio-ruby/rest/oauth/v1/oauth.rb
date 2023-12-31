##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Oauth < Domain
      class V1 < Version
        class OauthList < ListResource
          ##
          # Initialize the OauthList
          # @param [Version] version Version that contains the resource
          # @return [OauthList] OauthList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Oauth.V1.OauthList>'
          end
        end

        class OauthPage < Page
          ##
          # Initialize the OauthPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [OauthPage] OauthPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of OauthInstance
          # @param [Hash] payload Payload response from the API
          # @return [OauthInstance] OauthInstance
          def get_instance(payload)
            OauthInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Oauth.V1.OauthPage>'
          end
        end

        class OauthContext < InstanceContext
          ##
          # Initialize the OauthContext
          # @param [Version] version Version that contains the resource
          # @return [OauthContext] OauthContext
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/certs"
          end

          ##
          # Fetch the OauthInstance
          # @return [OauthInstance] Fetched OauthInstance
          def fetch
            payload = @version.fetch('GET', @uri)

            OauthInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Oauth.V1.OauthContext #{context}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Oauth.V1.OauthContext #{context}>"
          end
        end

        class OauthInstance < InstanceResource
          ##
          # Initialize the OauthInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @return [OauthInstance] OauthInstance
          def initialize(version, payload)
            super(version)

            # Marshaled Properties
            @properties = {'keys' => payload['keys'], 'url' => payload['url'], }

            # Context
            @instance_context = nil
            @params = {}
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @return [OauthContext] OauthContext for this OauthInstance
          def context
            unless @instance_context
              @instance_context = OauthContext.new(@version, )
            end
            @instance_context
          end

          ##
          # @return [Hash] A collection of certificates
          def keys
            @properties['keys']
          end

          ##
          # @return [String] The url
          def url
            @properties['url']
          end

          ##
          # Fetch the OauthInstance
          # @return [OauthInstance] Fetched OauthInstance
          def fetch
            context.fetch
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Oauth.V1.OauthInstance #{values}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Oauth.V1.OauthInstance #{values}>"
          end
        end
      end
    end
  end
end