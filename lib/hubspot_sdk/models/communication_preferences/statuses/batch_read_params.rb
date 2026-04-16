# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        # @see HubSpotSDK::Resources::CommunicationPreferences::Statuses::Batch#read
        class BatchReadParams < HubSpotSDK::Models::BatchInputString
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute channel
          #   The communication channel to filter the subscription statuses. Must be 'EMAIL'.
          #
          #   @return [Symbol, HubSpotSDK::Models::BatchInputString::Channel]
          required :channel, enum: -> { HubSpotSDK::BatchInputString::Channel }

          # @!attribute business_unit_id
          #   An optional integer representing the business unit ID. This parameter helps to
          #   filter the results based on the specific business unit.
          #
          #   @return [Integer, nil]
          optional :business_unit_id, Integer

          # @!method initialize(channel:, business_unit_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::CommunicationPreferences::Statuses::BatchReadParams} for
          #   more details.
          #
          #   @param channel [Symbol, HubSpotSDK::Models::BatchInputString::Channel] The communication channel to filter the subscription statuses. Must be 'EMAIL'.
          #
          #   @param business_unit_id [Integer] An optional integer representing the business unit ID. This parameter helps to f
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

          # The communication channel to filter the subscription statuses. Must be 'EMAIL'.
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
