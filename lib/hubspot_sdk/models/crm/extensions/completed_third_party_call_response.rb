# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::Calling#create_inbound_call
        class CompletedThirdPartyCallResponse < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute caller_id_matches
          #
          #   @return [Array<HubSpotSDK::Models::Crm::Extensions::ContactCallerID, HubSpotSDK::Models::Crm::Extensions::CompanyCallerID>]
          required :caller_id_matches,
                   -> {
                     HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse::CallerIDMatch]
                   },
                   api_name: :callerIdMatches

          # @!method initialize(caller_id_matches:)
          #   @param caller_id_matches [Array<HubSpotSDK::Models::Crm::Extensions::ContactCallerID, HubSpotSDK::Models::Crm::Extensions::CompanyCallerID>]

          module CallerIDMatch
            extend HubSpotSDK::Internal::Type::Union

            variant -> { HubSpotSDK::Crm::Extensions::ContactCallerID }

            variant -> { HubSpotSDK::Crm::Extensions::CompanyCallerID }

            # @!method self.variants
            #   @return [Array(HubSpotSDK::Models::Crm::Extensions::ContactCallerID, HubSpotSDK::Models::Crm::Extensions::CompanyCallerID)]
          end
        end
      end
    end
  end
end
