# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class ComplianceIDs < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute contact_ids
        #
        #   @return [Array<HubSpotSDK::Models::Automation::ContactID>]
        required :contact_ids,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::ContactID] },
                 api_name: :contactIds

        # @!attribute portal_ids
        #
        #   @return [Array<Integer>]
        required :portal_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer], api_name: :portalIds

        # @!attribute user_ids
        #
        #   @return [Array<Integer>]
        required :user_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer], api_name: :userIds

        # @!attribute no_contact_id_reason
        #   The reason why no contact ID is available.
        #
        #   @return [String, nil]
        optional :no_contact_id_reason, String, api_name: :noContactIdReason

        # @!attribute no_portal_id_reason
        #   The reason why no portal ID is available.
        #
        #   @return [String, nil]
        optional :no_portal_id_reason, String, api_name: :noPortalIdReason

        # @!attribute no_user_id_reason
        #   The reason why no user ID is available.
        #
        #   @return [String, nil]
        optional :no_user_id_reason, String, api_name: :noUserIdReason

        # @!method initialize(contact_ids:, portal_ids:, user_ids:, no_contact_id_reason: nil, no_portal_id_reason: nil, no_user_id_reason: nil)
        #   @param contact_ids [Array<HubSpotSDK::Models::Automation::ContactID>]
        #
        #   @param portal_ids [Array<Integer>]
        #
        #   @param user_ids [Array<Integer>]
        #
        #   @param no_contact_id_reason [String] The reason why no contact ID is available.
        #
        #   @param no_portal_id_reason [String] The reason why no portal ID is available.
        #
        #   @param no_user_id_reason [String] The reason why no user ID is available.
      end
    end
  end
end
