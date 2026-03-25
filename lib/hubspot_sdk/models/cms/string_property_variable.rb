# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class StringPropertyVariable < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::StringPropertyVariable::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::StringPropertyVariable::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::StringPropertyVariable::Operator]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubspotSDK::Models::Cms::StringPropertyVariable#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          STRING_PROPERTY_VARIABLE = :STRING_PROPERTY_VARIABLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
