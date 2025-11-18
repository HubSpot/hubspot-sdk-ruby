# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationsForObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute to
        #
        #   @return [HubspotSDK::Models::PublicObjectID]
        required :to, -> { HubspotSDK::PublicObjectID }

        # @!attribute types
        #
        #   @return [Array<HubspotSDK::Models::AssociationSpec>]
        required :types, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AssociationSpec] }

        # @!method initialize(to:, types:)
        #   @param to [HubspotSDK::Models::PublicObjectID]
        #   @param types [Array<HubspotSDK::Models::AssociationSpec>]
      end
    end
  end
end
