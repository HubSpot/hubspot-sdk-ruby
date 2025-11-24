# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::Currencies#get_company_currency
      class CompanyCurrency < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The currency code for the company currency
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The date the company currency was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!method initialize(id:, created_at:)
        #   @param id [String] The currency code for the company currency
        #
        #   @param created_at [Time] The date the company currency was created.
      end
    end
  end
end
