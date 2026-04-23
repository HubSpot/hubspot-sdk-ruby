# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class IsPresent < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute expression_to_evaluate
        #
        #   @return [Object]
        required :expression_to_evaluate, HubSpotSDK::Internal::Type::Unknown, api_name: :expressionToEvaluate

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::IsPresent::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::IsPresent::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(expression_to_evaluate:, operator:, property_name: nil, value: nil)
        #   @param expression_to_evaluate [Object]
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::IsPresent::Operator]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubSpotSDK::Models::Cms::IsPresent#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IS_PRESENT = :IS_PRESENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
