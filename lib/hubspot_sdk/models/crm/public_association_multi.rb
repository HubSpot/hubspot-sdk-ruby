# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationMulti < HubspotSDK::Internal::Type::BaseModel
        # @!attribute from
        #
        #   @return [HubspotSDK::Models::PublicObjectID]
        required :from, -> { HubspotSDK::PublicObjectID }

        # @!attribute to
        #   The IDs of objects that are associated with the object identified by the ID in
        #   'from'.
        #
        #   @return [Array<HubspotSDK::Models::Crm::AssociatedID>]
        required :to, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociatedID] }

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::EmailsPaging, nil]
        optional :paging, -> { HubspotSDK::Marketing::EmailsPaging }

        # @!method initialize(from:, to:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicAssociationMulti} for more details.
        #
        #   @param from [HubspotSDK::Models::PublicObjectID]
        #
        #   @param to [Array<HubspotSDK::Models::Crm::AssociatedID>] The IDs of objects that are associated with the object identified by the ID in '
        #
        #   @param paging [HubspotSDK::Models::Marketing::EmailsPaging] Contains information pagination of results.
      end
    end
  end
end
