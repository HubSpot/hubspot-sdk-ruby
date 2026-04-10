# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::MarketingEvents#list
      class MarketingEventListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The cursor indicating the position of the last retrieved item.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The limit for response size. The default value is 10, the max number is 100
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, limit: nil, request_options: {})
        #   @param after [String] The cursor indicating the position of the last retrieved item.
        #
        #   @param limit [Integer] The limit for response size. The default value is 10, the max number is 100
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
