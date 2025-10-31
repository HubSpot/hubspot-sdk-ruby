# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIEnumerationOutputField < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute options
        #
        #   @return [Array<String>]
        required :options, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIEnumerationOutputField::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIEnumerationOutputField::Type }

        # @!method initialize(name:, options:, type:)
        #   @param name [String]
        #   @param options [Array<String>]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIEnumerationOutputField::Type]

        # @see HubspotSDK::Models::Automation::APIEnumerationOutputField#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ENUMERATION = :ENUMERATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
