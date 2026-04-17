# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      # @see HubSpotSDK::Resources::CommunicationPreferences#unsubscribe_all
      class CommunicationPreferenceUnsubscribeAllParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute subscriber_id_string
        #
        #   @return [String]
        required :subscriber_id_string, String

        # @!attribute channel
        #   The communication channel to unsubscribe from. Must be 'EMAIL'.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel]
        required :channel,
                 enum: -> { HubSpotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel }

        # @!attribute business_unit_id
        #   The ID of the business unit associated with the request. This is an optional
        #   integer parameter.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!attribute verbose
        #   A boolean indicating whether to include detailed information in the response.
        #   Defaults to false.
        #
        #   @return [Boolean, nil]
        optional :verbose, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(subscriber_id_string:, channel:, business_unit_id: nil, verbose: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams}
        #   for more details.
        #
        #   @param subscriber_id_string [String]
        #
        #   @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel] The communication channel to unsubscribe from. Must be 'EMAIL'.
        #
        #   @param business_unit_id [Integer] The ID of the business unit associated with the request. This is an optional int
        #
        #   @param verbose [Boolean] A boolean indicating whether to include detailed information in the response. De
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        # The communication channel to unsubscribe from. Must be 'EMAIL'.
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
