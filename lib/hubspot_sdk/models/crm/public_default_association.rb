# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicDefaultAssociation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute association_spec
        #   Defines the type, direction, and details of the relationship between two CRM
        #   objects.
        #
        #   @return [HubspotSDK::Models::Crm::AssociationSpec]
        required :association_spec, -> { HubspotSDK::Crm::AssociationSpec }, api_name: :associationSpec

        # @!attribute from
        #   Contains the Id of a Public Object
        #
        #   @return [HubspotSDK::Models::Crm::PublicObjectID]
        required :from, -> { HubspotSDK::Crm::PublicObjectID }

        # @!attribute to
        #   Contains the Id of a Public Object
        #
        #   @return [HubspotSDK::Models::Crm::PublicObjectID]
        required :to, -> { HubspotSDK::Crm::PublicObjectID }

        # @!method initialize(association_spec:, from:, to:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicDefaultAssociation} for more details.
        #
        #   @param association_spec [HubspotSDK::Models::Crm::AssociationSpec] Defines the type, direction, and details of the relationship between two CRM obj
        #
        #   @param from [HubspotSDK::Models::Crm::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param to [HubspotSDK::Models::Crm::PublicObjectID] Contains the Id of a Public Object
      end
    end
  end
end
