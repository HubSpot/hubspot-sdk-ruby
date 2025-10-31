# frozen_string_literal: true

module HubspotSDK
  module Models
    class ObjectTypeDefinitionLabels < HubspotSDK::Internal::Type::BaseModel
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
