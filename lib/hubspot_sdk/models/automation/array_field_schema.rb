# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class ArrayFieldSchema < HubspotSDK::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [HubspotSDK::Models::Automation::IntegerFieldSchema, HubspotSDK::Models::Automation::LongFieldSchema, HubspotSDK::Models::Automation::DoubleFieldSchema, HubspotSDK::Models::Automation::StringFieldSchema, HubspotSDK::Models::Automation::BooleanFieldSchema, HubspotSDK::Models::Automation::ArrayFieldSchema, HubspotSDK::Models::Automation::ObjectFieldSchema]
        required :items, union: -> { HubspotSDK::Automation::ArrayFieldSchema::Items }

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::ArrayFieldSchema::Type]
        required :type, enum: -> { HubspotSDK::Automation::ArrayFieldSchema::Type }

        # @!method initialize(items:, type:)
        #   @param items [HubspotSDK::Models::Automation::IntegerFieldSchema, HubspotSDK::Models::Automation::LongFieldSchema, HubspotSDK::Models::Automation::DoubleFieldSchema, HubspotSDK::Models::Automation::StringFieldSchema, HubspotSDK::Models::Automation::BooleanFieldSchema, HubspotSDK::Models::Automation::ArrayFieldSchema, HubspotSDK::Models::Automation::ObjectFieldSchema]
        #   @param type [Symbol, HubspotSDK::Models::Automation::ArrayFieldSchema::Type]

        # @see HubspotSDK::Models::Automation::ArrayFieldSchema#items
        module Items
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::IntegerFieldSchema }

          variant -> { HubspotSDK::Automation::LongFieldSchema }

          variant -> { HubspotSDK::Automation::DoubleFieldSchema }

          variant -> { HubspotSDK::Automation::StringFieldSchema }

          variant -> { HubspotSDK::Automation::BooleanFieldSchema }

          variant -> { HubspotSDK::Automation::ArrayFieldSchema }

          variant -> { HubspotSDK::Automation::ObjectFieldSchema }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::IntegerFieldSchema, HubspotSDK::Models::Automation::LongFieldSchema, HubspotSDK::Models::Automation::DoubleFieldSchema, HubspotSDK::Models::Automation::StringFieldSchema, HubspotSDK::Models::Automation::BooleanFieldSchema, HubspotSDK::Models::Automation::ArrayFieldSchema, HubspotSDK::Models::Automation::ObjectFieldSchema)]
        end

        # @see HubspotSDK::Models::Automation::ArrayFieldSchema#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ARRAY = :ARRAY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
