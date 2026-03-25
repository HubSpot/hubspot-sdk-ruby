# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Pipelines#get_audit
      class CollectionResponsePublicAuditInfoNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicAuditInfo>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAuditInfo] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::PublicAuditInfo>]
      end
    end
  end
end
