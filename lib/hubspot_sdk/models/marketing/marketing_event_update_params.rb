# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::MarketingEvents#update
      class MarketingEventUpdateParams < HubSpotSDK::Models::Marketing::MarketingEventPublicUpdateRequestV2
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute object_id_
        #
        #   @return [String]
        required :object_id_, String

        # @!method initialize(object_id_:, request_options: {})
        #   @param object_id_ [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
