# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIEnrolledRecordPropertyFilterDataSource < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String, api_name: :propertyName

        # @!attribute record_field_name
        #
        #   @return [String]
        required :record_field_name, String, api_name: :recordFieldName

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIEnrolledRecordPropertyFilterDataSource::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIEnrolledRecordPropertyFilterDataSource::Type }

        # @!attribute sort_by
        #
        #   @return [HubspotSDK::Models::Automation::APISort, nil]
        optional :sort_by, -> { HubspotSDK::Automation::APISort }, api_name: :sortBy

        # @!method initialize(name:, property_name:, record_field_name:, type:, sort_by: nil)
        #   @param name [String]
        #   @param property_name [String]
        #   @param record_field_name [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIEnrolledRecordPropertyFilterDataSource::Type]
        #   @param sort_by [HubspotSDK::Models::Automation::APISort]

        # @see HubspotSDK::Models::Automation::APIEnrolledRecordPropertyFilterDataSource#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ENROLLED_RECORD_PROPERTY_FILTER = :ENROLLED_RECORD_PROPERTY_FILTER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
