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
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel]
        required :channel,
                 enum: -> { HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel }

        # @!attribute business_unit_id
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!attribute verbose
        #
        #   @return [Boolean, nil]
        optional :verbose, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(subscriber_id_string:, channel:, business_unit_id: nil, verbose: nil, request_options: {})
        #   @param subscriber_id_string [String]
        #   @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel]
        #   @param business_unit_id [Integer]
        #   @param verbose [Boolean]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

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
