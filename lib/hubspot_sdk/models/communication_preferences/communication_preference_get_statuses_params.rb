# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      # @see HubSpotSDK::Resources::CommunicationPreferences#get_statuses
      class CommunicationPreferenceGetStatusesParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute subscriber_id_string
        #
        #   @return [String]
        required :subscriber_id_string, String

        # @!attribute channel
        #   The communication channel for which the subscription status is being retrieved.
        #   This parameter is required and currently supports only 'EMAIL'.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel]
        required :channel,
                 enum: -> { HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel }

        # @!attribute business_unit_id
        #   The ID of the business unit to filter the subscription status by. This is an
        #   optional parameter.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!method initialize(subscriber_id_string:, channel:, business_unit_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams}
        #   for more details.
        #
        #   @param subscriber_id_string [String]
        #
        #   @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel] The communication channel for which the subscription status is being retrieved.
        #
        #   @param business_unit_id [Integer] The ID of the business unit to filter the subscription status by. This is an opt
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        # The communication channel for which the subscription status is being retrieved.
        # This parameter is required and currently supports only 'EMAIL'.
        module Channel
          extend HubSpotSDK::Internal::Type::Enum

          EMAIL = :EMAIL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
