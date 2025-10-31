# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        module V4
          # @see HubspotSDK::Resources::Marketing::Subscriptions::V4::Statuses#batch_unsubscribe_all
          class StatusBatchUnsubscribeAllParams < HubspotSDK::Models::BatchInputString
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute channel
            #   The channel type for the subscription type. Currently, the only supported
            #   channel type is `EMAIL`.
            #
            #   @return [Symbol, HubspotSDK::Models::BatchInputString::Channel]
            required :channel, enum: -> { HubspotSDK::BatchInputString::Channel }

            # @!attribute business_unit_id
            #   If you have the
            #   [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
            #   include this parameter to filter results by business unit ID. The default
            #   Account business unit will always use `0`.
            #
            #   @return [Integer, nil]
            optional :business_unit_id, Integer

            # @!attribute verbose
            #   Set to `true` to include the details of the updated subscription statuses in the
            #   response. Not including this parameter will result in an empty response.
            #
            #   @return [Boolean, nil]
            optional :verbose, HubspotSDK::Internal::Type::Boolean

            # @!method initialize(channel:, business_unit_id: nil, verbose: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {HubspotSDK::Models::Marketing::Subscriptions::V4::StatusBatchUnsubscribeAllParams}
            #   for more details.
            #
            #   @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel] The channel type for the subscription type. Currently, the only supported channe
            #
            #   @param business_unit_id [Integer] If you have the [business unit add-on](https://developers.hubspot.com/beta-docs/
            #
            #   @param verbose [Boolean] Set to `true` to include the details of the updated subscription statuses in the
            #
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

            # The channel type for the subscription type. Currently, the only supported
            # channel type is `EMAIL`.
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
end
