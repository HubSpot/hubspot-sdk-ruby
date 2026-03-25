# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class AbTestCreateRequestVNext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute content_id
        #   ID of the email to test.
        #
        #   @return [String]
        required :content_id, String, api_name: :contentId

        # @!attribute variation_name
        #   Name of the variation to be created.
        #
        #   @return [String]
        required :variation_name, String, api_name: :variationName

        # @!method initialize(content_id:, variation_name:)
        #   @param content_id [String] ID of the email to test.
        #
        #   @param variation_name [String] Name of the variation to be created.
      end
    end
  end
end
