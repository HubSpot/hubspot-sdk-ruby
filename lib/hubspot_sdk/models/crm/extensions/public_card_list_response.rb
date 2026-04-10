# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::CardsDev#get
        class PublicCardListResponse < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute results
          #   A list of card responses
          #
          #   @return [Array<HubSpotSDK::Models::Crm::Extensions::PublicCardResponse>]
          required :results,
                   -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::PublicCardResponse] }

          # @!method initialize(results:)
          #   @param results [Array<HubSpotSDK::Models::Crm::Extensions::PublicCardResponse>] A list of card responses
        end
      end
    end
  end
end
