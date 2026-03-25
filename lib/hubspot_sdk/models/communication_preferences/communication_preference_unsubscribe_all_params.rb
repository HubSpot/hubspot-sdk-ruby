# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      # @see HubspotSDK::Resources::CommunicationPreferences#unsubscribe_all
      class CommunicationPreferenceUnsubscribeAllParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute subscriber_id_string
        #
        #   @return [String]
        required :subscriber_id_string, String

        # @!attribute channel
        #   The communication channel from which to unsubscribe the subscriber. Must be
        #   'EMAIL'.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel]
        required :channel,
                 enum: -> { HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel }

        # @!attribute business_unit_id
        #   The ID of the business unit associated with the subscriber. This is an optional
        #   parameter.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!attribute verbose
        #   A boolean flag indicating whether to include detailed information in the
        #   response. Defaults to false.
        #
        #   @return [Boolean, nil]
        optional :verbose, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(subscriber_id_string:, channel:, business_unit_id: nil, verbose: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams}
        #   for more details.
        #
        #   @param subscriber_id_string [String]
        #
        #   @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel] The communication channel from which to unsubscribe the subscriber. Must be 'EMA
        #
        #   @param business_unit_id [Integer] The ID of the business unit associated with the subscriber. This is an optional
        #
        #   @param verbose [Boolean] A boolean flag indicating whether to include detailed information in the respons
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        # The communication channel from which to unsubscribe the subscriber. Must be
        # 'EMAIL'.
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
