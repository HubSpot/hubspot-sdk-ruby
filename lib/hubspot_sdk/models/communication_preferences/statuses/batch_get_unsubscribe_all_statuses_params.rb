# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        # @see HubspotSDK::Resources::CommunicationPreferences::Statuses::Batch#get_unsubscribe_all_statuses
        class BatchGetUnsubscribeAllStatusesParams < HubspotSDK::Models::BatchInputString
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute channel
          #
          #   @return [Symbol, HubspotSDK::Models::BatchInputString::Channel]
          required :channel, enum: -> { HubspotSDK::BatchInputString::Channel }

          # @!attribute business_unit_id
          #
          #   @return [Integer, nil]
          optional :business_unit_id, Integer

          # @!method initialize(channel:, business_unit_id: nil, request_options: {})
          #   @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel]
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
end
