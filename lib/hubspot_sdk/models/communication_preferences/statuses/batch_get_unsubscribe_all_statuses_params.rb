# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        # @see HubSpotSDK::Resources::CommunicationPreferences::Statuses::Batch#get_unsubscribe_all_statuses
        class BatchGetUnsubscribeAllStatusesParams < HubSpotSDK::Models::BatchInputString
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute channel
          #
          #   @return [Symbol, HubSpotSDK::Models::BatchInputString::Channel]
          required :channel, enum: -> { HubSpotSDK::BatchInputString::Channel }

          # @!attribute business_unit_id
          #
          #   @return [Integer, nil]
          optional :business_unit_id, Integer

          # @!method initialize(channel:, business_unit_id: nil, request_options: {})
          #   @param channel [Symbol, HubSpotSDK::Models::BatchInputString::Channel]
          #   @param business_unit_id [Integer]
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
end
