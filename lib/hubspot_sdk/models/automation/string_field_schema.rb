# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class StringFieldSchema < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::StringFieldSchema::Type]
        required :type, enum: -> { HubspotSDK::Automation::StringFieldSchema::Type }

        # @!attribute format_
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::StringFieldSchema::Format, nil]
        optional :format_, enum: -> { HubspotSDK::Automation::StringFieldSchema::Format }, api_name: :format

        # @!method initialize(type:, format_: nil)
        #   @param type [Symbol, HubspotSDK::Models::Automation::StringFieldSchema::Type]
        #   @param format_ [Symbol, HubspotSDK::Models::Automation::StringFieldSchema::Format]

        # @see HubspotSDK::Models::Automation::StringFieldSchema#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          STRING = :STRING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Automation::StringFieldSchema#format_
        module Format
          extend HubspotSDK::Internal::Type::Enum

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
