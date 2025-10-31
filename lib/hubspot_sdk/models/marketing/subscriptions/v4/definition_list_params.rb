# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        module V4
          # @see HubspotSDK::Resources::Marketing::Subscriptions::V4::Definitions#list
          class DefinitionListParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute business_unit_id
            #   If you have the
            #   [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
            #   include this parameter to filter results by business unit ID. The default
            #   Account business unit will always use `0`.
            #
            #   @return [Integer, nil]
            optional :business_unit_id, Integer

            # @!attribute include_translations
            #   Set to `true` to return subscription translations associated with each
            #   definition.
            #
            #   @return [Boolean, nil]
            optional :include_translations, HubspotSDK::Internal::Type::Boolean

            # @!method initialize(business_unit_id: nil, include_translations: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {HubspotSDK::Models::Marketing::Subscriptions::V4::DefinitionListParams} for
            #   more details.
            #
            #   @param business_unit_id [Integer] If you have the [business unit add-on](https://developers.hubspot.com/beta-docs/
            #
            #   @param include_translations [Boolean] Set to `true` to return subscription translations associated with each definitio
            #
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
