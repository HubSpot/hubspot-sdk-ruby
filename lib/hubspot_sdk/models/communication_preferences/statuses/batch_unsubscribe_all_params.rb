# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        # @see HubSpotSDK::Resources::CommunicationPreferences::Statuses::Batch#unsubscribe_all
        class BatchUnsubscribeAllParams < HubSpotSDK::Models::BatchInputString
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute channel
          #   The communication channel from which subscribers will be unsubscribed. This
          #   parameter is required and currently supports only 'EMAIL'.
          #
          #   @return [Symbol, HubSpotSDK::Models::BatchInputString::Channel]
          required :channel, enum: -> { HubSpotSDK::BatchInputString::Channel }

          # @!attribute business_unit_id
          #   An optional integer representing the business unit ID for which the operation is
          #   being performed.
          #
          #   @return [Integer, nil]
          optional :business_unit_id, Integer

          # @!attribute verbose
          #   A boolean indicating whether to include detailed information in the response.
          #   Defaults to false.
          #
          #   @return [Boolean, nil]
          optional :verbose, HubSpotSDK::Internal::Type::Boolean

          # @!method initialize(channel:, business_unit_id: nil, verbose: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::CommunicationPreferences::Statuses::BatchUnsubscribeAllParams}
          #   for more details.
          #
          #   @param channel [Symbol, HubSpotSDK::Models::BatchInputString::Channel] The communication channel from which subscribers will be unsubscribed. This para
          #
          #   @param business_unit_id [Integer] An optional integer representing the business unit ID for which the operation is
          #
          #   @param verbose [Boolean] A boolean indicating whether to include detailed information in the response. De
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

          # The communication channel from which subscribers will be unsubscribed. This
          # parameter is required and currently supports only 'EMAIL'.
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
