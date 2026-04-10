# frozen_string_literal: true

module HubSpotSDK
  module Models
    module BusinessUnits
      class PublicBusinessUnitLogoMetadata < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute logo_alt_text
        #   The logo's alt text
        #
        #   @return [String, nil]
        optional :logo_alt_text, String, api_name: :logoAltText

        # @!attribute logo_url
        #   The logo's url
        #
        #   @return [String, nil]
        optional :logo_url, String, api_name: :logoUrl

        # @!attribute resized_url
        #   The logo's resized url
        #
        #   @return [String, nil]
        optional :resized_url, String, api_name: :resizedUrl

        # @!method initialize(logo_alt_text: nil, logo_url: nil, resized_url: nil)
        #   @param logo_alt_text [String] The logo's alt text
        #
        #   @param logo_url [String] The logo's url
        #
        #   @param resized_url [String] The logo's resized url
      end
    end
  end
end
