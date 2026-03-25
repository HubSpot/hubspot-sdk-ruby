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
          #   The communication channel to check the unsubscribe-all status for. Currently,
          #   only 'EMAIL' is supported. This parameter is required.
          #
          #   @return [Symbol, HubspotSDK::Models::BatchInputString::Channel]
          required :channel, enum: -> { HubspotSDK::BatchInputString::Channel }

          # @!attribute business_unit_id
          #   The ID of the business unit for which the statuses are being retrieved. This is
          #   an optional parameter.
          #
          #   @return [Integer, nil]
          optional :business_unit_id, Integer

          # @!method initialize(channel:, business_unit_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::CommunicationPreferences::Statuses::BatchGetUnsubscribeAllStatusesParams}
          #   for more details.
          #
          #   @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel] The communication channel to check the unsubscribe-all status for. Currently, on
          #
          #   @param business_unit_id [Integer] The ID of the business unit for which the statuses are being retrieved. This is
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          # The communication channel to check the unsubscribe-all status for. Currently,
          # only 'EMAIL' is supported. This parameter is required.
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
