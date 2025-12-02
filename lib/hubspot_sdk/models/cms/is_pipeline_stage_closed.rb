# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IsPipelineStageClosed < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::IsPipelineStageClosed::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::IsPipelineStageClosed::Operator }

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

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::IsPipelineStageClosed::Operator]
        #   @param inputs [Array<Hash{Symbol=>Object}>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::IsPipelineStageClosed#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_PIPELINE_STAGE_CLOSED = :IS_PIPELINE_STAGE_CLOSED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
