# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      # @see HubSpotSDK::Resources::CommunicationPreferences#get_unsubscribe_all_status
      class CommunicationPreferenceGetUnsubscribeAllStatusParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute subscriber_id_string
        #
        #   @return [String]
        required :subscriber_id_string, String

        # @!attribute channel
        #   The communication channel from which to unsubscribe the subscriber. This is a
        #   required parameter and must be 'EMAIL'.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel]
        required :channel,
                 enum: -> { HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel }

        # @!attribute business_unit_id
        #   The ID of the business unit to which the subscriber belongs. This is an optional
        #   parameter.
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
        #   {HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams}
        #   for more details.
        #
        #   @param subscriber_id_string [String]
        #
        #   @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel] The communication channel from which to unsubscribe the subscriber. This is a re
        #
        #   @param business_unit_id [Integer] The ID of the business unit to which the subscriber belongs. This is an optional
        #
        #   @param verbose [Boolean] A boolean indicating whether to include detailed information in the response. De
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        # The communication channel from which to unsubscribe the subscriber. This is a
        # required parameter and must be 'EMAIL'.
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
