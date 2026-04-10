# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class ArrayFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute items
        #   Defines the type of elements contained within the array, which can be an
        #   integer, long, double, string, boolean, another array, or an object.
        #
        #   @return [HubSpotSDK::Models::Automation::IntegerFieldSchema, HubSpotSDK::Models::Automation::LongFieldSchema, HubSpotSDK::Models::Automation::DoubleFieldSchema, HubSpotSDK::Models::Automation::StringFieldSchema, HubSpotSDK::Models::Automation::BooleanFieldSchema, HubSpotSDK::Models::Automation::ArrayFieldSchema, HubSpotSDK::Models::Automation::ObjectFieldSchema]
        required :items, union: -> { HubSpotSDK::Automation::ArrayFieldSchema::Items }

        # @!attribute type
        #   Specifies that the field is of type 'ARRAY'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::ArrayFieldSchema::Type]
        required :type, enum: -> { HubSpotSDK::Automation::ArrayFieldSchema::Type }

        # @!method initialize(items:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::ArrayFieldSchema} for more details.
        #
        #   @param items [HubSpotSDK::Models::Automation::IntegerFieldSchema, HubSpotSDK::Models::Automation::LongFieldSchema, HubSpotSDK::Models::Automation::DoubleFieldSchema, HubSpotSDK::Models::Automation::StringFieldSchema, HubSpotSDK::Models::Automation::BooleanFieldSchema, HubSpotSDK::Models::Automation::ArrayFieldSchema, HubSpotSDK::Models::Automation::ObjectFieldSchema] Defines the type of elements contained within the array, which can be an integer
        #
        #   @param type [Symbol, HubSpotSDK::Models::Automation::ArrayFieldSchema::Type] Specifies that the field is of type 'ARRAY'.

        # Defines the type of elements contained within the array, which can be an
        # integer, long, double, string, boolean, another array, or an object.
        #
        # @see HubSpotSDK::Models::Automation::ArrayFieldSchema#items
        module Items
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Automation::IntegerFieldSchema }

          variant -> { HubSpotSDK::Automation::LongFieldSchema }

          variant -> { HubSpotSDK::Automation::DoubleFieldSchema }

          variant -> { HubSpotSDK::Automation::StringFieldSchema }

          variant -> { HubSpotSDK::Automation::BooleanFieldSchema }

          variant -> { HubSpotSDK::Automation::ArrayFieldSchema }

          variant -> { HubSpotSDK::Automation::ObjectFieldSchema }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Automation::IntegerFieldSchema, HubSpotSDK::Models::Automation::LongFieldSchema, HubSpotSDK::Models::Automation::DoubleFieldSchema, HubSpotSDK::Models::Automation::StringFieldSchema, HubSpotSDK::Models::Automation::BooleanFieldSchema, HubSpotSDK::Models::Automation::ArrayFieldSchema, HubSpotSDK::Models::Automation::ObjectFieldSchema)]
        end

        # Specifies that the field is of type 'ARRAY'.
        #
        # @see HubSpotSDK::Models::Automation::ArrayFieldSchema#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          ARRAY = :ARRAY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
