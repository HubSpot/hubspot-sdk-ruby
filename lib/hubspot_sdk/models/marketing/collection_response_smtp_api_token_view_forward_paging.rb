# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponseSmtpAPITokenViewForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::SmtpAPITokenView>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::SmtpAPITokenView] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Marketing::SmtpAPITokenView>]
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
