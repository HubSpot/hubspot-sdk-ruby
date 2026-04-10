# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponsePublicAuditLog < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Cms::PublicAuditLog>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PublicAuditLog] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Cms::PublicAuditLog>]
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
