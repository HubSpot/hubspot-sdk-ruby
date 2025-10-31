# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::TaxRates#get
      class TaxRateGetResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute active
        #
        #   @return [Boolean]
        required :active, HubspotSDK::Internal::Type::Boolean

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute percentage_rate
        #
        #   @return [Float]
        required :percentage_rate, Float, api_name: :percentageRate

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, active:, created_at:, label:, name:, percentage_rate:, updated_at:)
        #   @param id [String]
        #   @param active [Boolean]
        #   @param created_at [Time]
        #   @param label [String]
        #   @param name [String]
        #   @param percentage_rate [Float]
        #   @param updated_at [Time]
      end
    end
  end
end
