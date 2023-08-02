##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class FlexApi < Domain
      class V1 < Version
        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class InsightsUserRolesList < ListResource
          ##
          # Initialize the InsightsUserRolesList
          # @param [Version] version Version that contains the resource
          # @return [InsightsUserRolesList] InsightsUserRolesList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.FlexApi.V1.InsightsUserRolesList>'
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class InsightsUserRolesPage < Page
          ##
          # Initialize the InsightsUserRolesPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [InsightsUserRolesPage] InsightsUserRolesPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of InsightsUserRolesInstance
          # @param [Hash] payload Payload response from the API
          # @return [InsightsUserRolesInstance] InsightsUserRolesInstance
          def get_instance(payload)
            InsightsUserRolesInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.FlexApi.V1.InsightsUserRolesPage>'
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class InsightsUserRolesContext < InstanceContext
          ##
          # Initialize the InsightsUserRolesContext
          # @param [Version] version Version that contains the resource
          # @return [InsightsUserRolesContext] InsightsUserRolesContext
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/Insights/UserRoles"
          end

          ##
          # Fetch the InsightsUserRolesInstance
          # @param [String] authorization The Authorization HTTP request header
          # @return [InsightsUserRolesInstance] Fetched InsightsUserRolesInstance
          def fetch(authorization: :unset)
            headers = Twilio::Values.of({'Authorization' => authorization, })

            payload = @version.fetch('GET', @uri, headers: headers)

            InsightsUserRolesInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.FlexApi.V1.InsightsUserRolesContext #{context}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.FlexApi.V1.InsightsUserRolesContext #{context}>"
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class InsightsUserRolesInstance < InstanceResource
          ##
          # Initialize the InsightsUserRolesInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @return [InsightsUserRolesInstance] InsightsUserRolesInstance
          def initialize(version, payload)
            super(version)

            # Marshaled Properties
            @properties = {'roles' => payload['roles'], 'url' => payload['url'], }

            # Context
            @instance_context = nil
            @params = {}
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @return [InsightsUserRolesContext] InsightsUserRolesContext for this InsightsUserRolesInstance
          def context
            unless @instance_context
              @instance_context = InsightsUserRolesContext.new(@version, )
            end
            @instance_context
          end

          ##
          # @return [Array[String]] Flex Insights roles for the user
          def roles
            @properties['roles']
          end

          ##
          # @return [String] The url
          def url
            @properties['url']
          end

          ##
          # Fetch the InsightsUserRolesInstance
          # @param [String] authorization The Authorization HTTP request header
          # @return [InsightsUserRolesInstance] Fetched InsightsUserRolesInstance
          def fetch(authorization: :unset)
            context.fetch(authorization: authorization, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.FlexApi.V1.InsightsUserRolesInstance #{values}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.FlexApi.V1.InsightsUserRolesInstance #{values}>"
          end
        end
      end
    end
  end
end