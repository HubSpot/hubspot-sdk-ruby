# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        # @see HubspotSDK::Resources::CommunicationPreferences::Statuses::Batch#read
        class BatchReadParams < HubspotSDK::Models::BatchInputString
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute channel
          #   The communication channel to filter by. This parameter is required and currently
          #   only supports 'EMAIL'.
          #
          #   @return [Symbol, HubspotSDK::Models::BatchInputString::Channel]
          required :channel, enum: -> { HubspotSDK::BatchInputString::Channel }

          # @!attribute business_unit_id
          #   An optional identifier for the business unit. This is an integer value.
          #
          #   @return [Integer, nil]
          optional :business_unit_id, Integer

          # @!method initialize(channel:, business_unit_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::CommunicationPreferences::Statuses::BatchReadParams} for
          #   more details.
          #
          #   @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel] The communication channel to filter by. This parameter is required and currently
          #
          #   @param business_unit_id [Integer] An optional identifier for the business unit. This is an integer value.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          # The communication channel to filter by. This parameter is required and currently
          # only supports 'EMAIL'.
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
