# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class HasEmailReply < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::HasEmailReply::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::HasEmailReply::Operator }

        # @!attribute inputs
        #
        #   @return [Array<Object>, nil]
        optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::HasEmailReply::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::HasEmailReply#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          HAS_EMAIL_REPLY = :HAS_EMAIL_REPLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
