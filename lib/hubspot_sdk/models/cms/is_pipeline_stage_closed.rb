# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class IsPipelineStageClosed < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::IsPipelineStageClosed::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::IsPipelineStageClosed::Operator }

        # @!attribute inputs
        #
        #   @return [Array<Object>, nil]
        optional :inputs, HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::IsPipelineStageClosed::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubSpotSDK::Models::Cms::IsPipelineStageClosed#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IS_PIPELINE_STAGE_CLOSED = :IS_PIPELINE_STAGE_CLOSED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
