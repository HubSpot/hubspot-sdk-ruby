# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IsPresent < HubspotSDK::Internal::Type::BaseModel
        # @!attribute expression_to_evaluate
        #
        #   @return [Hash{Symbol=>Object}]
        required :expression_to_evaluate,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :expressionToEvaluate

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::IsPresent::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::IsPresent::Operator }

        # @!attribute inputs
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :inputs,
                 HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(expression_to_evaluate:, operator:, inputs: nil, property_name: nil, value: nil)
        #   @param expression_to_evaluate [Hash{Symbol=>Object}]
        #   @param operator [Symbol, HubspotSDK::Models::Cms::IsPresent::Operator]
        #   @param inputs [Array<Hash{Symbol=>Object}>]
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
