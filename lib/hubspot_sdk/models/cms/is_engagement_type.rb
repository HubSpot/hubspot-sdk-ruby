# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IsEngagementType < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::IsEngagementType::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::IsEngagementType::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::IsEngagementType::Operator]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::IsEngagementType#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_ENGAGEMENT_TYPE = :IS_ENGAGEMENT_TYPE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
