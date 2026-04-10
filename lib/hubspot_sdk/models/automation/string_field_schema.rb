# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class StringFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #   Indicates that the type is a string, with the default value being STRING.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::StringFieldSchema::Type]
        required :type, enum: -> { HubSpotSDK::Automation::StringFieldSchema::Type }

        # @!attribute format_
        #   Specifies the format of the string, with accepted values: DATE, DATE_TIME,
        #   OBJECT_COORDINATE, TIME, URI.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::StringFieldSchema::Format, nil]
        optional :format_, enum: -> { HubSpotSDK::Automation::StringFieldSchema::Format }, api_name: :format

        # @!method initialize(type:, format_: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::StringFieldSchema} for more details.
        #
        #   @param type [Symbol, HubSpotSDK::Models::Automation::StringFieldSchema::Type] Indicates that the type is a string, with the default value being STRING.
        #
        #   @param format_ [Symbol, HubSpotSDK::Models::Automation::StringFieldSchema::Format] Specifies the format of the string, with accepted values: DATE, DATE_TIME, OBJEC

        # Indicates that the type is a string, with the default value being STRING.
        #
        # @see HubSpotSDK::Models::Automation::StringFieldSchema#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          STRING = :STRING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the format of the string, with accepted values: DATE, DATE_TIME,
        # OBJECT_COORDINATE, TIME, URI.
        #
        # @see HubSpotSDK::Models::Automation::StringFieldSchema#format_
        module Format
          extend HubSpotSDK::Internal::Type::Enum

          DATE = :DATE
          DATE_TIME = :DATE_TIME
          OBJECT_COORDINATE = :OBJECT_COORDINATE
          TIME = :TIME
          URI = :URI

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
