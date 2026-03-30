# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        # @see HubspotSDK::Resources::Crm::Extensions::Calling#create_inbound_call
        class CompletedThirdPartyCallResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute caller_id_matches
          #
          #   @return [Array<HubspotSDK::Models::Crm::Extensions::ContactCallerID, HubspotSDK::Models::Crm::Extensions::CompanyCallerID>]
          required :caller_id_matches,
                   -> {
                     HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse::CallerIDMatch]
                   },
                   api_name: :callerIdMatches

          # @!method initialize(caller_id_matches:)
          #   @param caller_id_matches [Array<HubspotSDK::Models::Crm::Extensions::ContactCallerID, HubspotSDK::Models::Crm::Extensions::CompanyCallerID>]

          module CallerIDMatch
            extend HubspotSDK::Internal::Type::Union

            variant -> { HubspotSDK::Crm::Extensions::ContactCallerID }

            variant -> { HubspotSDK::Crm::Extensions::CompanyCallerID }

            # @!method self.variants
            #   @return [Array(HubspotSDK::Models::Crm::Extensions::ContactCallerID, HubspotSDK::Models::Crm::Extensions::CompanyCallerID)]
          end
        end
      end
    end
  end
end
