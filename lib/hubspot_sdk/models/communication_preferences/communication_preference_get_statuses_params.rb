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
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel]
        required :channel,
                 enum: -> { HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel }

        # @!attribute business_unit_id
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!method initialize(subscriber_id_string:, channel:, business_unit_id: nil, request_options: {})
        #   @param subscriber_id_string [String]
        #   @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel]
        #   @param business_unit_id [Integer]
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
