# frozen_string_literal: true

module HubspotSDK
  module Models
    class PropertyName < HubspotSDK::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!method initialize(name:)
      #   @param name [String]
    end
  end
end
