# frozen_string_literal: true

module HubspotSDK
  module Models
    class AbTestCreateRequestVNext < HubspotSDK::Internal::Type::BaseModel
      # @!attribute content_id
      #   ID of the object to test.
      #
      #   @return [String]
      required :content_id, String, api_name: :contentId

      # @!attribute variation_name
      #   Name of A/B test variation.
      #
      #   @return [String]
      required :variation_name, String, api_name: :variationName

      # @!method initialize(content_id:, variation_name:)
      #   @param content_id [String] ID of the object to test.
      #
      #   @param variation_name [String] Name of A/B test variation.
    end
  end
end
