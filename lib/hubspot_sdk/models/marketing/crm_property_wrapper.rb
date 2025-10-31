# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CRMPropertyWrapper < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!method initialize(name:, value:)
        #   @param name [String]
        #   @param value [String]
      end
    end
  end
end
