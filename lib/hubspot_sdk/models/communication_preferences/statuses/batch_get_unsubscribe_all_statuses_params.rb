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
          #   The communication channel to filter the unsubscribe statuses. This parameter is
          #   required and currently supports 'EMAIL' as a valid value.
          #
          #   @return [Symbol, HubSpotSDK::Models::BatchInputString::Channel]
          required :channel, enum: -> { HubSpotSDK::BatchInputString::Channel }

          # @!attribute business_unit_id
          #   The ID of the business unit to filter the results. This is an optional
          #   parameter.
          #
          #   @return [Integer, nil]
          optional :business_unit_id, Integer

          # @!method initialize(channel:, business_unit_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::CommunicationPreferences::Statuses::BatchGetUnsubscribeAllStatusesParams}
          #   for more details.
          #
          #   @param channel [Symbol, HubSpotSDK::Models::BatchInputString::Channel] The communication channel to filter the unsubscribe statuses. This parameter is
          #
          #   @param business_unit_id [Integer] The ID of the business unit to filter the results. This is an optional parameter
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

          # The communication channel to filter the unsubscribe statuses. This parameter is
          # required and currently supports 'EMAIL' as a valid value.
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
