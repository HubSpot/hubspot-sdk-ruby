# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Pipelines#list_audit
      class CollectionResponsePublicAuditInfoNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAuditInfo>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAuditInfo] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Crm::PublicAuditInfo>]
      end
    end
  end
end
