# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicCRMSearchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filters
        #
        #   @return [Array<HubspotSDK::Models::CRM::Filter>]
        required :filters, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Filter] }

        # @!attribute query
        #
        #   @return [String]
        required :query, String

        # @!attribute sorts
        #
        #   @return [Array<String>]
        required :sorts, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(filters:, query:, sorts:)
        #   @param filters [Array<HubspotSDK::Models::CRM::Filter>]
        #   @param query [String]
        #   @param sorts [Array<String>]
      end
    end
  end
end
