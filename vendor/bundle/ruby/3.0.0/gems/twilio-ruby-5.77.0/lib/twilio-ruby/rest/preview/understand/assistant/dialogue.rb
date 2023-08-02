##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Preview < Domain
      class Understand < Version
        class AssistantContext < InstanceContext
          ##
          # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
          class DialogueList < ListResource
            ##
            # Initialize the DialogueList
            # @param [Version] version Version that contains the resource
            # @param [String] assistant_sid The unique ID of the parent Assistant.
            # @return [DialogueList] DialogueList
            def initialize(version, assistant_sid: nil)
              super(version)

              # Path Solution
              @solution = {assistant_sid: assistant_sid}
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Preview.Understand.DialogueList>'
            end
          end

          ##
          # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
          class DialoguePage < Page
            ##
            # Initialize the DialoguePage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [DialoguePage] DialoguePage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of DialogueInstance
            # @param [Hash] payload Payload response from the API
            # @return [DialogueInstance] DialogueInstance
            def get_instance(payload)
              DialogueInstance.new(@version, payload, assistant_sid: @solution[:assistant_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Preview.Understand.DialoguePage>'
            end
          end

          ##
          # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
          class DialogueContext < InstanceContext
            ##
            # Initialize the DialogueContext
            # @param [Version] version Version that contains the resource
            # @param [String] assistant_sid The assistant_sid
            # @param [String] sid The sid
            # @return [DialogueContext] DialogueContext
            def initialize(version, assistant_sid, sid)
              super(version)

              # Path Solution
              @solution = {assistant_sid: assistant_sid, sid: sid, }
              @uri = "/Assistants/#{@solution[:assistant_sid]}/Dialogues/#{@solution[:sid]}"
            end

            ##
            # Fetch the DialogueInstance
            # @return [DialogueInstance] Fetched DialogueInstance
            def fetch
              payload = @version.fetch('GET', @uri)

              DialogueInstance.new(
                  @version,
                  payload,
                  assistant_sid: @solution[:assistant_sid],
                  sid: @solution[:sid],
              )
            end

            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Preview.Understand.DialogueContext #{context}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Preview.Understand.DialogueContext #{context}>"
            end
          end

          ##
          # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
          class DialogueInstance < InstanceResource
            ##
            # Initialize the DialogueInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] assistant_sid The unique ID of the parent Assistant.
            # @param [String] sid The sid
            # @return [DialogueInstance] DialogueInstance
            def initialize(version, payload, assistant_sid: nil, sid: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'account_sid' => payload['account_sid'],
                  'assistant_sid' => payload['assistant_sid'],
                  'sid' => payload['sid'],
                  'data' => payload['data'],
                  'url' => payload['url'],
              }

              # Context
              @instance_context = nil
              @params = {'assistant_sid' => assistant_sid, 'sid' => sid || @properties['sid'], }
            end

            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @return [DialogueContext] DialogueContext for this DialogueInstance
            def context
              unless @instance_context
                @instance_context = DialogueContext.new(@version, @params['assistant_sid'], @params['sid'], )
              end
              @instance_context
            end

            ##
            # @return [String] The unique ID of the Account that created this Field.
            def account_sid
              @properties['account_sid']
            end

            ##
            # @return [String] The unique ID of the parent Assistant.
            def assistant_sid
              @properties['assistant_sid']
            end

            ##
            # @return [String] The unique ID of the Dialogue
            def sid
              @properties['sid']
            end

            ##
            # @return [Hash] The dialogue memory object as json
            def data
              @properties['data']
            end

            ##
            # @return [String] The url
            def url
              @properties['url']
            end

            ##
            # Fetch the DialogueInstance
            # @return [DialogueInstance] Fetched DialogueInstance
            def fetch
              context.fetch
            end

            ##
            # Provide a user friendly representation
            def to_s
              values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Preview.Understand.DialogueInstance #{values}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Preview.Understand.DialogueInstance #{values}>"
            end
          end
        end
      end
    end
  end
end