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
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Cms::PublicAuditLog>]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
