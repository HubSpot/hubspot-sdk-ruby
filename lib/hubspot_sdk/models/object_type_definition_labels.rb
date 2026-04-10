# frozen_string_literal: true

module HubSpotSDK
  module Models
    class ObjectTypeDefinitionLabels < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute plural
      #
      #   @return [String, nil]
      optional :plural, String

      # @!attribute singular
      #
      #   @return [String, nil]
      optional :singular, String

      # @!method initialize(plural: nil, singular: nil)
      #   @param plural [String]
      #   @param singular [String]
    end
  end
end
