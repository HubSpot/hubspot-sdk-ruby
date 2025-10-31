# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      # @see HubspotSDK::Resources::Account::Activity#list_security_activities
      class CollectionResponseHydratedCriticalActionForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Account::HydratedCriticalAction>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Account::HydratedCriticalAction] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Account::HydratedCriticalAction>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
