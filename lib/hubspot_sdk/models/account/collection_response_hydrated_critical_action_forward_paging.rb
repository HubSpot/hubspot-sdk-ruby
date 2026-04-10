# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Account
      class CollectionResponseHydratedCriticalActionForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Account::HydratedCriticalAction>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Account::HydratedCriticalAction] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Account::HydratedCriticalAction>]
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
