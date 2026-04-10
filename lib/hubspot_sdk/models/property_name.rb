# frozen_string_literal: true

module HubSpotSDK
  module Models
    class PropertyName < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!method initialize(name:)
      #   @param name [String]
    end
  end
end
