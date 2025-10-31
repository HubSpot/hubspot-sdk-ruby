# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CollectionResponsePublicAuditLog < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Cms::PublicAuditLog>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::PublicAuditLog] }

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::Paging, nil]
        optional :paging, -> { HubspotSDK::Marketing::Paging }

        # @!method initialize(results:, paging: nil)
        #   The collection of audit logs.
        #
        #   @param results [Array<HubspotSDK::Models::Cms::PublicAuditLog>]
        #
        #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
      end
    end
  end
end
