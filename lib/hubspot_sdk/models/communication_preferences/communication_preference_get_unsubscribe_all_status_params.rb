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
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel]
        required :channel,
                 enum: -> { HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel }

        # @!attribute business_unit_id
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!attribute verbose
        #
        #   @return [Boolean, nil]
        optional :verbose, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(subscriber_id_string:, channel:, business_unit_id: nil, verbose: nil, request_options: {})
        #   @param subscriber_id_string [String]
        #   @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel]
        #   @param business_unit_id [Integer]
        #   @param verbose [Boolean]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

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
