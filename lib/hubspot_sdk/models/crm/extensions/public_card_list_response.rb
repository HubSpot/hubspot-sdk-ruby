# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        # @see HubspotSDK::Resources::CRM::Extensions::Cards#list
        class PublicCardListResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::CRM::Extensions::PublicCardResponse>]
          required :results,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::PublicCardResponse] }

          # @!method initialize(results:)
          #   @param results [Array<HubspotSDK::Models::CRM::Extensions::PublicCardResponse>]
        end
      end
    end
  end
end
