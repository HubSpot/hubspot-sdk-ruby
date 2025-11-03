# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        # @see HubspotSDK::Resources::Crm::Extensions::Cards#list
        class PublicCardListResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::Crm::Extensions::PublicCardResponse>]
          required :results,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Extensions::PublicCardResponse] }

          # @!method initialize(results:)
          #   @param results [Array<HubspotSDK::Models::Crm::Extensions::PublicCardResponse>]
        end
      end
    end
  end
end
