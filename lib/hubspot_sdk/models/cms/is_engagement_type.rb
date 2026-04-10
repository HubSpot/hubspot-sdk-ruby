# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class IsEngagementType < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::IsEngagementType::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::IsEngagementType::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::IsEngagementType::Operator]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubSpotSDK::Models::Cms::IsEngagementType#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IS_ENGAGEMENT_TYPE = :IS_ENGAGEMENT_TYPE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
