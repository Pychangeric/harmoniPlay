##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Api < Domain
      class V2010 < Version
        class AccountContext < InstanceContext
          class AvailablePhoneNumberCountryContext < InstanceContext
            class MachineToMachineList < ListResource
              ##
              # Initialize the MachineToMachineList
              # @param [Version] version Version that contains the resource
              # @param [String] account_sid The account_sid
              # @param [String] country_code The
              #   {ISO-3166-1}[https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2] country code of
              #   the country.
              # @return [MachineToMachineList] MachineToMachineList
              def initialize(version, account_sid: nil, country_code: nil)
                super(version)

                # Path Solution
                @solution = {account_sid: account_sid, country_code: country_code}
                @uri = "/Accounts/#{@solution[:account_sid]}/AvailablePhoneNumbers/#{@solution[:country_code]}/MachineToMachine.json"
              end

              ##
              # Lists MachineToMachineInstance records from the API as a list.
              # Unlike stream(), this operation is eager and will load `limit` records into
              # memory before returning.
              # @param [String] area_code The area code of the phone numbers to read. Applies to
              #   only phone numbers in the US and Canada.
              # @param [String] contains The pattern on which to match phone numbers. Valid
              #   characters are `*`, `0-9`, `a-z`, and `A-Z`. The `*` character matches any
              #   single digit. For examples, see {Example
              #   2}[https://www.twilio.com/docs/phone-numbers/api/availablephonenumber-resource#local-get-basic-example-2]
              #   and {Example
              #   3}[https://www.twilio.com/docs/phone-numbers/api/availablephonenumber-resource#local-get-basic-example-3].
              #   If specified, this value must have at least two characters.
              # @param [Boolean] sms_enabled Whether the phone numbers can receive text
              #   messages. Can be: `true` or `false`.
              # @param [Boolean] mms_enabled Whether the phone numbers can receive MMS messages.
              #   Can be: `true` or `false`.
              # @param [Boolean] voice_enabled Whether the phone numbers can receive calls. Can
              #   be: `true` or `false`.
              # @param [Boolean] exclude_all_address_required Whether to exclude phone numbers
              #   that require an {Address}[https://www.twilio.com/docs/usage/api/address]. Can
              #   be: `true` or `false` and the default is `false`.
              # @param [Boolean] exclude_local_address_required Whether to exclude phone numbers
              #   that require a local {Address}[https://www.twilio.com/docs/usage/api/address].
              #   Can be: `true` or `false` and the default is `false`.
              # @param [Boolean] exclude_foreign_address_required Whether to exclude phone
              #   numbers that require a foreign
              #   {Address}[https://www.twilio.com/docs/usage/api/address]. Can be: `true` or
              #   `false` and the default is `false`.
              # @param [Boolean] beta Whether to read phone numbers that are new to the Twilio
              #   platform. Can be: `true` or `false` and the default is `true`.
              # @param [String] near_number Given a phone number, find a geographically close
              #   number within `distance` miles. Distance defaults to 25 miles. Applies to only
              #   phone numbers in the US and Canada.
              # @param [String] near_lat_long Given a latitude/longitude pair `lat,long` find
              #   geographically close numbers within `distance` miles. Applies to only phone
              #   numbers in the US and Canada.
              # @param [String] distance The search radius, in miles, for a `near_` query.  Can
              #   be up to `500` and the default is `25`. Applies to only phone numbers in the US
              #   and Canada.
              # @param [String] in_postal_code Limit results to a particular postal code. Given
              #   a phone number, search within the same postal code as that number. Applies to
              #   only phone numbers in the US and Canada.
              # @param [String] in_region Limit results to a particular region, state, or
              #   province. Given a phone number, search within the same region as that number.
              #   Applies to only phone numbers in the US and Canada.
              # @param [String] in_rate_center Limit results to a specific rate center, or given
              #   a phone number search within the same rate center as that number. Requires
              #   `in_lata` to be set as well. Applies to only phone numbers in the US and Canada.
              # @param [String] in_lata Limit results to a specific local access and transport
              #   area ({LATA}[https://en.wikipedia.org/wiki/Local_access_and_transport_area]).
              #   Given a phone number, search within the same
              #   {LATA}[https://en.wikipedia.org/wiki/Local_access_and_transport_area] as that
              #   number. Applies to only phone numbers in the US and Canada.
              # @param [String] in_locality Limit results to a particular locality or city.
              #   Given a phone number, search within the same Locality as that number.
              # @param [Boolean] fax_enabled Whether the phone numbers can receive faxes. Can
              #   be: `true` or `false`.
              # @param [Integer] limit Upper limit for the number of records to return. stream()
              #    guarantees to never return more than limit.  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when
              #    not set will use the default value of 50 records.  If no page_size is defined
              #    but a limit is defined, stream() will attempt to read the limit with the most
              #    efficient page size, i.e. min(limit, 1000)
              # @return [Array] Array of up to limit results
              def list(area_code: :unset, contains: :unset, sms_enabled: :unset, mms_enabled: :unset, voice_enabled: :unset, exclude_all_address_required: :unset, exclude_local_address_required: :unset, exclude_foreign_address_required: :unset, beta: :unset, near_number: :unset, near_lat_long: :unset, distance: :unset, in_postal_code: :unset, in_region: :unset, in_rate_center: :unset, in_lata: :unset, in_locality: :unset, fax_enabled: :unset, limit: nil, page_size: nil)
                self.stream(
                    area_code: area_code,
                    contains: contains,
                    sms_enabled: sms_enabled,
                    mms_enabled: mms_enabled,
                    voice_enabled: voice_enabled,
                    exclude_all_address_required: exclude_all_address_required,
                    exclude_local_address_required: exclude_local_address_required,
                    exclude_foreign_address_required: exclude_foreign_address_required,
                    beta: beta,
                    near_number: near_number,
                    near_lat_long: near_lat_long,
                    distance: distance,
                    in_postal_code: in_postal_code,
                    in_region: in_region,
                    in_rate_center: in_rate_center,
                    in_lata: in_lata,
                    in_locality: in_locality,
                    fax_enabled: fax_enabled,
                    limit: limit,
                    page_size: page_size
                ).entries
              end

              ##
              # Streams MachineToMachineInstance records from the API as an Enumerable.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              # @param [String] area_code The area code of the phone numbers to read. Applies to
              #   only phone numbers in the US and Canada.
              # @param [String] contains The pattern on which to match phone numbers. Valid
              #   characters are `*`, `0-9`, `a-z`, and `A-Z`. The `*` character matches any
              #   single digit. For examples, see {Example
              #   2}[https://www.twilio.com/docs/phone-numbers/api/availablephonenumber-resource#local-get-basic-example-2]
              #   and {Example
              #   3}[https://www.twilio.com/docs/phone-numbers/api/availablephonenumber-resource#local-get-basic-example-3].
              #   If specified, this value must have at least two characters.
              # @param [Boolean] sms_enabled Whether the phone numbers can receive text
              #   messages. Can be: `true` or `false`.
              # @param [Boolean] mms_enabled Whether the phone numbers can receive MMS messages.
              #   Can be: `true` or `false`.
              # @param [Boolean] voice_enabled Whether the phone numbers can receive calls. Can
              #   be: `true` or `false`.
              # @param [Boolean] exclude_all_address_required Whether to exclude phone numbers
              #   that require an {Address}[https://www.twilio.com/docs/usage/api/address]. Can
              #   be: `true` or `false` and the default is `false`.
              # @param [Boolean] exclude_local_address_required Whether to exclude phone numbers
              #   that require a local {Address}[https://www.twilio.com/docs/usage/api/address].
              #   Can be: `true` or `false` and the default is `false`.
              # @param [Boolean] exclude_foreign_address_required Whether to exclude phone
              #   numbers that require a foreign
              #   {Address}[https://www.twilio.com/docs/usage/api/address]. Can be: `true` or
              #   `false` and the default is `false`.
              # @param [Boolean] beta Whether to read phone numbers that are new to the Twilio
              #   platform. Can be: `true` or `false` and the default is `true`.
              # @param [String] near_number Given a phone number, find a geographically close
              #   number within `distance` miles. Distance defaults to 25 miles. Applies to only
              #   phone numbers in the US and Canada.
              # @param [String] near_lat_long Given a latitude/longitude pair `lat,long` find
              #   geographically close numbers within `distance` miles. Applies to only phone
              #   numbers in the US and Canada.
              # @param [String] distance The search radius, in miles, for a `near_` query.  Can
              #   be up to `500` and the default is `25`. Applies to only phone numbers in the US
              #   and Canada.
              # @param [String] in_postal_code Limit results to a particular postal code. Given
              #   a phone number, search within the same postal code as that number. Applies to
              #   only phone numbers in the US and Canada.
              # @param [String] in_region Limit results to a particular region, state, or
              #   province. Given a phone number, search within the same region as that number.
              #   Applies to only phone numbers in the US and Canada.
              # @param [String] in_rate_center Limit results to a specific rate center, or given
              #   a phone number search within the same rate center as that number. Requires
              #   `in_lata` to be set as well. Applies to only phone numbers in the US and Canada.
              # @param [String] in_lata Limit results to a specific local access and transport
              #   area ({LATA}[https://en.wikipedia.org/wiki/Local_access_and_transport_area]).
              #   Given a phone number, search within the same
              #   {LATA}[https://en.wikipedia.org/wiki/Local_access_and_transport_area] as that
              #   number. Applies to only phone numbers in the US and Canada.
              # @param [String] in_locality Limit results to a particular locality or city.
              #   Given a phone number, search within the same Locality as that number.
              # @param [Boolean] fax_enabled Whether the phone numbers can receive faxes. Can
              #   be: `true` or `false`.
              # @param [Integer] limit Upper limit for the number of records to return. stream()
              #    guarantees to never return more than limit. Default is no limit.
              # @param [Integer] page_size Number of records to fetch per request, when
              #    not set will use the default value of 50 records. If no page_size is defined
              #    but a limit is defined, stream() will attempt to read the limit with the most
              #    efficient page size, i.e. min(limit, 1000)
              # @return [Enumerable] Enumerable that will yield up to limit results
              def stream(area_code: :unset, contains: :unset, sms_enabled: :unset, mms_enabled: :unset, voice_enabled: :unset, exclude_all_address_required: :unset, exclude_local_address_required: :unset, exclude_foreign_address_required: :unset, beta: :unset, near_number: :unset, near_lat_long: :unset, distance: :unset, in_postal_code: :unset, in_region: :unset, in_rate_center: :unset, in_lata: :unset, in_locality: :unset, fax_enabled: :unset, limit: nil, page_size: nil)
                limits = @version.read_limits(limit, page_size)

                page = self.page(
                    area_code: area_code,
                    contains: contains,
                    sms_enabled: sms_enabled,
                    mms_enabled: mms_enabled,
                    voice_enabled: voice_enabled,
                    exclude_all_address_required: exclude_all_address_required,
                    exclude_local_address_required: exclude_local_address_required,
                    exclude_foreign_address_required: exclude_foreign_address_required,
                    beta: beta,
                    near_number: near_number,
                    near_lat_long: near_lat_long,
                    distance: distance,
                    in_postal_code: in_postal_code,
                    in_region: in_region,
                    in_rate_center: in_rate_center,
                    in_lata: in_lata,
                    in_locality: in_locality,
                    fax_enabled: fax_enabled,
                    page_size: limits[:page_size],
                )

                @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
              end

              ##
              # When passed a block, yields MachineToMachineInstance records from the API.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              def each
                limits = @version.read_limits

                page = self.page(page_size: limits[:page_size], )

                @version.stream(page,
                                limit: limits[:limit],
                                page_limit: limits[:page_limit]).each {|x| yield x}
              end

              ##
              # Retrieve a single page of MachineToMachineInstance records from the API.
              # Request is executed immediately.
              # @param [String] area_code The area code of the phone numbers to read. Applies to
              #   only phone numbers in the US and Canada.
              # @param [String] contains The pattern on which to match phone numbers. Valid
              #   characters are `*`, `0-9`, `a-z`, and `A-Z`. The `*` character matches any
              #   single digit. For examples, see {Example
              #   2}[https://www.twilio.com/docs/phone-numbers/api/availablephonenumber-resource#local-get-basic-example-2]
              #   and {Example
              #   3}[https://www.twilio.com/docs/phone-numbers/api/availablephonenumber-resource#local-get-basic-example-3].
              #   If specified, this value must have at least two characters.
              # @param [Boolean] sms_enabled Whether the phone numbers can receive text
              #   messages. Can be: `true` or `false`.
              # @param [Boolean] mms_enabled Whether the phone numbers can receive MMS messages.
              #   Can be: `true` or `false`.
              # @param [Boolean] voice_enabled Whether the phone numbers can receive calls. Can
              #   be: `true` or `false`.
              # @param [Boolean] exclude_all_address_required Whether to exclude phone numbers
              #   that require an {Address}[https://www.twilio.com/docs/usage/api/address]. Can
              #   be: `true` or `false` and the default is `false`.
              # @param [Boolean] exclude_local_address_required Whether to exclude phone numbers
              #   that require a local {Address}[https://www.twilio.com/docs/usage/api/address].
              #   Can be: `true` or `false` and the default is `false`.
              # @param [Boolean] exclude_foreign_address_required Whether to exclude phone
              #   numbers that require a foreign
              #   {Address}[https://www.twilio.com/docs/usage/api/address]. Can be: `true` or
              #   `false` and the default is `false`.
              # @param [Boolean] beta Whether to read phone numbers that are new to the Twilio
              #   platform. Can be: `true` or `false` and the default is `true`.
              # @param [String] near_number Given a phone number, find a geographically close
              #   number within `distance` miles. Distance defaults to 25 miles. Applies to only
              #   phone numbers in the US and Canada.
              # @param [String] near_lat_long Given a latitude/longitude pair `lat,long` find
              #   geographically close numbers within `distance` miles. Applies to only phone
              #   numbers in the US and Canada.
              # @param [String] distance The search radius, in miles, for a `near_` query.  Can
              #   be up to `500` and the default is `25`. Applies to only phone numbers in the US
              #   and Canada.
              # @param [String] in_postal_code Limit results to a particular postal code. Given
              #   a phone number, search within the same postal code as that number. Applies to
              #   only phone numbers in the US and Canada.
              # @param [String] in_region Limit results to a particular region, state, or
              #   province. Given a phone number, search within the same region as that number.
              #   Applies to only phone numbers in the US and Canada.
              # @param [String] in_rate_center Limit results to a specific rate center, or given
              #   a phone number search within the same rate center as that number. Requires
              #   `in_lata` to be set as well. Applies to only phone numbers in the US and Canada.
              # @param [String] in_lata Limit results to a specific local access and transport
              #   area ({LATA}[https://en.wikipedia.org/wiki/Local_access_and_transport_area]).
              #   Given a phone number, search within the same
              #   {LATA}[https://en.wikipedia.org/wiki/Local_access_and_transport_area] as that
              #   number. Applies to only phone numbers in the US and Canada.
              # @param [String] in_locality Limit results to a particular locality or city.
              #   Given a phone number, search within the same Locality as that number.
              # @param [Boolean] fax_enabled Whether the phone numbers can receive faxes. Can
              #   be: `true` or `false`.
              # @param [String] page_token PageToken provided by the API
              # @param [Integer] page_number Page Number, this value is simply for client state
              # @param [Integer] page_size Number of records to return, defaults to 50
              # @return [Page] Page of MachineToMachineInstance
              def page(area_code: :unset, contains: :unset, sms_enabled: :unset, mms_enabled: :unset, voice_enabled: :unset, exclude_all_address_required: :unset, exclude_local_address_required: :unset, exclude_foreign_address_required: :unset, beta: :unset, near_number: :unset, near_lat_long: :unset, distance: :unset, in_postal_code: :unset, in_region: :unset, in_rate_center: :unset, in_lata: :unset, in_locality: :unset, fax_enabled: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                params = Twilio::Values.of({
                    'AreaCode' => area_code,
                    'Contains' => contains,
                    'SmsEnabled' => sms_enabled,
                    'MmsEnabled' => mms_enabled,
                    'VoiceEnabled' => voice_enabled,
                    'ExcludeAllAddressRequired' => exclude_all_address_required,
                    'ExcludeLocalAddressRequired' => exclude_local_address_required,
                    'ExcludeForeignAddressRequired' => exclude_foreign_address_required,
                    'Beta' => beta,
                    'NearNumber' => near_number,
                    'NearLatLong' => near_lat_long,
                    'Distance' => distance,
                    'InPostalCode' => in_postal_code,
                    'InRegion' => in_region,
                    'InRateCenter' => in_rate_center,
                    'InLata' => in_lata,
                    'InLocality' => in_locality,
                    'FaxEnabled' => fax_enabled,
                    'PageToken' => page_token,
                    'Page' => page_number,
                    'PageSize' => page_size,
                })

                response = @version.page('GET', @uri, params: params)

                MachineToMachinePage.new(@version, response, @solution)
              end

              ##
              # Retrieve a single page of MachineToMachineInstance records from the API.
              # Request is executed immediately.
              # @param [String] target_url API-generated URL for the requested results page
              # @return [Page] Page of MachineToMachineInstance
              def get_page(target_url)
                response = @version.domain.request(
                    'GET',
                    target_url
                )
                MachineToMachinePage.new(@version, response, @solution)
              end

              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Api.V2010.MachineToMachineList>'
              end
            end

            class MachineToMachinePage < Page
              ##
              # Initialize the MachineToMachinePage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [Hash] solution Path solution for the resource
              # @return [MachineToMachinePage] MachineToMachinePage
              def initialize(version, response, solution)
                super(version, response)

                # Path Solution
                @solution = solution
              end

              ##
              # Build an instance of MachineToMachineInstance
              # @param [Hash] payload Payload response from the API
              # @return [MachineToMachineInstance] MachineToMachineInstance
              def get_instance(payload)
                MachineToMachineInstance.new(
                    @version,
                    payload,
                    account_sid: @solution[:account_sid],
                    country_code: @solution[:country_code],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Api.V2010.MachineToMachinePage>'
              end
            end

            class MachineToMachineInstance < InstanceResource
              ##
              # Initialize the MachineToMachineInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] account_sid The account_sid
              # @param [String] country_code The
              #   {ISO-3166-1}[https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2] country code of
              #   the country.
              # @return [MachineToMachineInstance] MachineToMachineInstance
              def initialize(version, payload, account_sid: nil, country_code: nil)
                super(version)

                # Marshaled Properties
                @properties = {
                    'friendly_name' => payload['friendly_name'],
                    'phone_number' => payload['phone_number'],
                    'lata' => payload['lata'],
                    'locality' => payload['locality'],
                    'rate_center' => payload['rate_center'],
                    'latitude' => payload['latitude'] == nil ? payload['latitude'] : payload['latitude'].to_f,
                    'longitude' => payload['longitude'] == nil ? payload['longitude'] : payload['longitude'].to_f,
                    'region' => payload['region'],
                    'postal_code' => payload['postal_code'],
                    'iso_country' => payload['iso_country'],
                    'address_requirements' => payload['address_requirements'],
                    'beta' => payload['beta'],
                    'capabilities' => payload['capabilities'],
                }
              end

              ##
              # @return [String] A formatted version of the phone number
              def friendly_name
                @properties['friendly_name']
              end

              ##
              # @return [String] The phone number in E.164 format
              def phone_number
                @properties['phone_number']
              end

              ##
              # @return [String] The LATA of this phone number
              def lata
                @properties['lata']
              end

              ##
              # @return [String] The locality or city of this phone number's location
              def locality
                @properties['locality']
              end

              ##
              # @return [String] The rate center of this phone number
              def rate_center
                @properties['rate_center']
              end

              ##
              # @return [String] The latitude of this phone number's location
              def latitude
                @properties['latitude']
              end

              ##
              # @return [String] The longitude of this phone number's location
              def longitude
                @properties['longitude']
              end

              ##
              # @return [String] The two-letter state or province abbreviation of this phone number's location
              def region
                @properties['region']
              end

              ##
              # @return [String] The postal or ZIP code of this phone number's location
              def postal_code
                @properties['postal_code']
              end

              ##
              # @return [String] The ISO country code of this phone number
              def iso_country
                @properties['iso_country']
              end

              ##
              # @return [String] The type of Address resource the phone number requires
              def address_requirements
                @properties['address_requirements']
              end

              ##
              # @return [Boolean] Whether the phone number is new to the Twilio platform
              def beta
                @properties['beta']
              end

              ##
              # @return [String] Whether a phone number can receive calls or messages
              def capabilities
                @properties['capabilities']
              end

              ##
              # Provide a user friendly representation
              def to_s
                "<Twilio.Api.V2010.MachineToMachineInstance>"
              end

              ##
              # Provide a detailed, user friendly representation
              def inspect
                "<Twilio.Api.V2010.MachineToMachineInstance>"
              end
            end
          end
        end
      end
    end
  end
end