# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      # @see HubspotSDK::Resources::CommunicationPreferences#get_unsubscribe_all_status
      class CommunicationPreferenceGetUnsubscribeAllStatusParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute subscriber_id_string
        #
        #   @return [String]
        required :subscriber_id_string, String

        # @!attribute channel
        #   The communication channel to unsubscribe from. Must be 'EMAIL'.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel]
        required :channel,
                 enum: -> { HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel }

        # @!attribute business_unit_id
        #   The ID of the business unit associated with the communication preferences.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!attribute verbose
        #   A boolean indicating whether to include detailed information in the response.
        #   Defaults to false.
        #
        #   @return [Boolean, nil]
        optional :verbose, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(subscriber_id_string:, channel:, business_unit_id: nil, verbose: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams}
        #   for more details.
        #
        #   @param subscriber_id_string [String]
        #
        #   @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel] The communication channel to unsubscribe from. Must be 'EMAIL'.
        #
        #   @param business_unit_id [Integer] The ID of the business unit associated with the communication preferences.
        #
        #   @param verbose [Boolean] A boolean indicating whether to include detailed information in the response. De
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        # The communication channel to unsubscribe from. Must be 'EMAIL'.
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
