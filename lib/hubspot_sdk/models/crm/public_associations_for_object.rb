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
        #   @return [Array<HubspotSDK::Models::Crm::Associations::AssociationSpec1>]
        required :types,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::AssociationSpec1] }

        # @!method initialize(to:, types:)
        #   @param to [HubspotSDK::Models::PublicObjectID]
        #   @param types [Array<HubspotSDK::Models::Crm::Associations::AssociationSpec1>]
      end
    end
  end
end
