# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ConstantBoolean < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::ConstantBoolean::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::ConstantBoolean::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::ConstantBoolean::Operator]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::ConstantBoolean#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          CONSTANT_BOOLEAN = :CONSTANT_BOOLEAN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
