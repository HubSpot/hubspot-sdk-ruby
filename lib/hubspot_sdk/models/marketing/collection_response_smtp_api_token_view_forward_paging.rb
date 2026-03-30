# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseSmtpAPITokenViewForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::SmtpAPITokenView>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SmtpAPITokenView] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Marketing::SmtpAPITokenView>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
