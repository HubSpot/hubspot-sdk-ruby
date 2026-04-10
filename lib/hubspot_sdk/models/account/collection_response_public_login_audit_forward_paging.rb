# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Account
      class CollectionResponsePublicLoginAuditForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Account::PublicLoginAudit>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Account::PublicLoginAudit] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Account::PublicLoginAudit>]
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
