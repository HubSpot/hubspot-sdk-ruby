# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BeginsWith < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::BeginsWith::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::BeginsWith::Operator }

        # @!attribute string_to_check
        #
        #   @return [HubspotSDK::Models::Cms::Expression]
        required :string_to_check, union: -> { HubspotSDK::Cms::Expression }, api_name: :stringToCheck

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

        # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::BeginsWith::Operator]
        #   @param string_to_check [HubspotSDK::Models::Cms::Expression]
        #   @param inputs [Array<HubspotSDK::Models::Cms::Expression>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::BeginsWith#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          BEGINS_WITH = :BEGINS_WITH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
