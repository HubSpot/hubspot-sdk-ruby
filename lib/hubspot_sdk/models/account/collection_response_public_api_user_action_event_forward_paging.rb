# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      class CollectionResponsePublicAPIUserActionEventForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Account::PublicAPIUserActionEvent>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Account::PublicAPIUserActionEvent] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Account::PublicAPIUserActionEvent>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
