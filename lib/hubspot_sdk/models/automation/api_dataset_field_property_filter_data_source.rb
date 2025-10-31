# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIDatasetFieldPropertyFilterDataSource < HubspotSDK::Internal::Type::BaseModel
        # @!attribute dataset_field_name
        #
        #   @return [String]
        required :dataset_field_name, String, api_name: :datasetFieldName

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
        #   @return [Symbol, HubspotSDK::Models::Automation::APIDatasetFieldPropertyFilterDataSource::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIDatasetFieldPropertyFilterDataSource::Type }

        # @!attribute sort_by
        #
        #   @return [HubspotSDK::Models::Automation::APISort, nil]
        optional :sort_by, -> { HubspotSDK::Automation::APISort }, api_name: :sortBy

        # @!method initialize(dataset_field_name:, name:, property_name:, type:, sort_by: nil)
        #   @param dataset_field_name [String]
        #   @param name [String]
        #   @param property_name [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIDatasetFieldPropertyFilterDataSource::Type]
        #   @param sort_by [HubspotSDK::Models::Automation::APISort]

        # @see HubspotSDK::Models::Automation::APIDatasetFieldPropertyFilterDataSource#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          DATASET_FIELD_PROPERTY_FILTER = :DATASET_FIELD_PROPERTY_FILTER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
