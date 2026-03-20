# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationsForObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute to
        #   Contains the Id of a Public Object
        #
        #   @return [HubspotSDK::Models::Crm::PublicObjectID]
        required :to, -> { HubspotSDK::Crm::PublicObjectID }

        # @!attribute types
        #
        #   @return [Array<HubspotSDK::Models::Crm::AssociationSpec>]
        required :types, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociationSpec] }

        # @!method initialize(to:, types:)
        #   @param to [HubspotSDK::Models::Crm::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param types [Array<HubspotSDK::Models::Crm::AssociationSpec>]
      end
    end
  end
end
