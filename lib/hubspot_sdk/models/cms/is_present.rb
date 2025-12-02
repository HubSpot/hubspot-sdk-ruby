# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IsPresent < HubspotSDK::Internal::Type::BaseModel
        # @!attribute expression_to_evaluate
        #
        #   @return [HubspotSDK::Models::Cms::Expression]
        required :expression_to_evaluate,
                 union: -> { HubspotSDK::Cms::Expression },
                 api_name: :expressionToEvaluate

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::IsPresent::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::IsPresent::Operator }

        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Cms::Expression>, nil]
        optional :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Cms::Expression] }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(expression_to_evaluate:, operator:, inputs: nil, property_name: nil, value: nil)
        #   @param expression_to_evaluate [HubspotSDK::Models::Cms::Expression]
        #   @param operator [Symbol, HubspotSDK::Models::Cms::IsPresent::Operator]
        #   @param inputs [Array<HubspotSDK::Models::Cms::Expression>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::IsPresent#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_PRESENT = :IS_PRESENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
