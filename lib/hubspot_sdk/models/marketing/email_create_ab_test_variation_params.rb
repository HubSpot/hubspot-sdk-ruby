# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#create_ab_test_variation
      class EmailCreateAbTestVariationParams < HubSpotSDK::Models::AbTestCreateRequestVNext
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
