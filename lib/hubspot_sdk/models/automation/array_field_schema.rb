# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class ArrayFieldSchema < HubspotSDK::Internal::Type::BaseModel
        # @!attribute items
        #   Defines the type of elements contained within the array, which can be an
        #   integer, long, double, string, boolean, another array, or an object.
        #
        #   @return [HubspotSDK::Models::Automation::IntegerFieldSchema, HubspotSDK::Models::Automation::LongFieldSchema, HubspotSDK::Models::Automation::DoubleFieldSchema, HubspotSDK::Models::Automation::StringFieldSchema, HubspotSDK::Models::Automation::BooleanFieldSchema, HubspotSDK::Models::Automation::ArrayFieldSchema, HubspotSDK::Models::Automation::ObjectFieldSchema]
        required :items, union: -> { HubspotSDK::Automation::ArrayFieldSchema::Items }

        # @!attribute type
        #   Specifies that the field is of type 'ARRAY'.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::ArrayFieldSchema::Type]
        required :type, enum: -> { HubspotSDK::Automation::ArrayFieldSchema::Type }

        # @!method initialize(items:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::ArrayFieldSchema} for more details.
        #
        #   @param items [HubspotSDK::Models::Automation::IntegerFieldSchema, HubspotSDK::Models::Automation::LongFieldSchema, HubspotSDK::Models::Automation::DoubleFieldSchema, HubspotSDK::Models::Automation::StringFieldSchema, HubspotSDK::Models::Automation::BooleanFieldSchema, HubspotSDK::Models::Automation::ArrayFieldSchema, HubspotSDK::Models::Automation::ObjectFieldSchema] Defines the type of elements contained within the array, which can be an integer
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::ArrayFieldSchema::Type] Specifies that the field is of type 'ARRAY'.

        # Defines the type of elements contained within the array, which can be an
        # integer, long, double, string, boolean, another array, or an object.
        #
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

        # Specifies that the field is of type 'ARRAY'.
        #
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
