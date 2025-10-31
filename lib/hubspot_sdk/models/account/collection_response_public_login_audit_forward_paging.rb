# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      # @see HubspotSDK::Resources::Account::Activity#list_login_activities
      class CollectionResponsePublicLoginAuditForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Account::PublicLoginAudit>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Account::PublicLoginAudit] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Account::PublicLoginAudit>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
