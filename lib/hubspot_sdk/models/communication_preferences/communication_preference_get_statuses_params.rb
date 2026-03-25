# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      # @see HubspotSDK::Resources::CommunicationPreferences#get_statuses
      class CommunicationPreferenceGetStatusesParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute subscriber_id_string
        #
        #   @return [String]
        required :subscriber_id_string, String

        # @!attribute channel
        #   A required string indicating the communication channel to retrieve the status
        #   for. Valid value is 'EMAIL'.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel]
        required :channel,
                 enum: -> { HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel }

        # @!attribute business_unit_id
        #   An optional integer representing the business unit ID to filter the subscription
        #   status.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!method initialize(subscriber_id_string:, channel:, business_unit_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams}
        #   for more details.
        #
        #   @param subscriber_id_string [String]
        #
        #   @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel] A required string indicating the communication channel to retrieve the status fo
        #
        #   @param business_unit_id [Integer] An optional integer representing the business unit ID to filter the subscription
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        # A required string indicating the communication channel to retrieve the status
        # for. Valid value is 'EMAIL'.
        module Channel
          extend HubspotSDK::Internal::Type::Enum

          EMAIL = :EMAIL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
