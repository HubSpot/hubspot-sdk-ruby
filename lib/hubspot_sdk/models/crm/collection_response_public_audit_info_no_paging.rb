# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Pipelines#get_audit
      class CollectionResponsePublicAuditInfoNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicAuditInfo>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicAuditInfo] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::CRM::PublicAuditInfo>]
      end
    end
  end
end
