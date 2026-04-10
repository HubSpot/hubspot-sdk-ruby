# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      # @see HubSpotSDK::Resources::Settings::TaxRates#list
      class PublicTaxRateGroup < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the tax rate.
        #
        #   @return [String]
        required :id, String

        # @!attribute active
        #   Indicates whether the tax rate group is currently active.
        #
        #   @return [Boolean]
        required :active, HubSpotSDK::Internal::Type::Boolean

        # @!attribute created_at
        #   The date and time when the tax rate was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute label
        #   The display label for the tax rate.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The name of the tax rate.
        #
        #   @return [String]
        required :name, String

        # @!attribute percentage_rate
        #   The percentage rate applied.
        #
        #   @return [Float]
        required :percentage_rate, Float, api_name: :percentageRate

        # @!attribute updated_at
        #   The date and time when the tax rate was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, active:, created_at:, label:, name:, percentage_rate:, updated_at:)
        #   @param id [String] The unique identifier for the tax rate.
        #
        #   @param active [Boolean] Indicates whether the tax rate group is currently active.
        #
        #   @param created_at [Time] The date and time when the tax rate was created.
        #
        #   @param label [String] The display label for the tax rate.
        #
        #   @param name [String] The name of the tax rate.
        #
        #   @param percentage_rate [Float] The percentage rate applied.
        #
        #   @param updated_at [Time] The date and time when the tax rate was last updated.
      end
    end
  end
end
