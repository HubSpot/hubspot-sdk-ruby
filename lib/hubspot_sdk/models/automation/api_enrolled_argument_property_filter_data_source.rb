# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIEnrolledArgumentPropertyFilterDataSource < HubspotSDK::Internal::Type::BaseModel
        # @!attribute argument_name
        #
        #   @return [String]
        required :argument_name, String, api_name: :argumentName

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String, api_name: :propertyName

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIEnrolledArgumentPropertyFilterDataSource::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIEnrolledArgumentPropertyFilterDataSource::Type }

        # @!attribute sort_by
        #
        #   @return [HubspotSDK::Models::Automation::APISort, nil]
        optional :sort_by, -> { HubspotSDK::Automation::APISort }, api_name: :sortBy

        # @!method initialize(argument_name:, name:, property_name:, type:, sort_by: nil)
        #   @param argument_name [String]
        #   @param name [String]
        #   @param property_name [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIEnrolledArgumentPropertyFilterDataSource::Type]
        #   @param sort_by [HubspotSDK::Models::Automation::APISort]

        # @see HubspotSDK::Models::Automation::APIEnrolledArgumentPropertyFilterDataSource#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ENROLLED_ARGUMENT_PROPERTY_FILTER = :ENROLLED_ARGUMENT_PROPERTY_FILTER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
