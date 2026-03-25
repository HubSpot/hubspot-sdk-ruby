# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CrmPropertyWrapper < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #   The name of the property in the CRM
        #
        #   @return [String]
        required :name, String

        # @!attribute value
        #   The value of the property in the CRM
        #
        #   @return [String]
        required :value, String

        # @!method initialize(name:, value:)
        #   @param name [String] The name of the property in the CRM
        #
        #   @param value [String] The value of the property in the CRM
      end
    end
  end
end
