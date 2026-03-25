# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        # @see HubspotSDK::Resources::CommunicationPreferences::Statuses::Batch#unsubscribe_all
        class BatchUnsubscribeAllParams < HubspotSDK::Models::BatchInputString
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute channel
          #   A required string specifying the communication channel. Currently, only 'EMAIL'
          #   is supported.
          #
          #   @return [Symbol, HubspotSDK::Models::BatchInputString::Channel]
          required :channel, enum: -> { HubspotSDK::BatchInputString::Channel }

          # @!attribute business_unit_id
          #   The ID of the business unit to which the operation applies. It is an optional
          #   parameter.
          #
          #   @return [Integer, nil]
          optional :business_unit_id, Integer

          # @!attribute verbose
          #   A boolean indicating whether to include detailed information in the response.
          #   Defaults to false.
          #
          #   @return [Boolean, nil]
          optional :verbose, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(channel:, business_unit_id: nil, verbose: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::CommunicationPreferences::Statuses::BatchUnsubscribeAllParams}
          #   for more details.
          #
          #   @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel] A required string specifying the communication channel. Currently, only 'EMAIL'
          #
          #   @param business_unit_id [Integer] The ID of the business unit to which the operation applies. It is an optional pa
          #
          #   @param verbose [Boolean] A boolean indicating whether to include detailed information in the response. De
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          # A required string specifying the communication channel. Currently, only 'EMAIL'
          # is supported.
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
