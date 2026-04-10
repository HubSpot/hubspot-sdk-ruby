# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicDefaultAssociation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute association_spec
        #   Defines the type, direction, and details of the relationship between two CRM
        #   objects.
        #
        #   @return [HubSpotSDK::Models::AssociationSpec]
        required :association_spec, -> { HubSpotSDK::AssociationSpec }, api_name: :associationSpec

        # @!attribute from
        #   Contains the Id of a Public Object
        #
        #   @return [HubSpotSDK::Models::PublicObjectID]
        required :from, -> { HubSpotSDK::PublicObjectID }

        # @!attribute to
        #   Contains the Id of a Public Object
        #
        #   @return [HubSpotSDK::Models::PublicObjectID]
        required :to, -> { HubSpotSDK::PublicObjectID }

        # @!method initialize(association_spec:, from:, to:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicDefaultAssociation} for more details.
        #
        #   @param association_spec [HubSpotSDK::Models::AssociationSpec] Defines the type, direction, and details of the relationship between two CRM obj
        #
        #   @param from [HubSpotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param to [HubSpotSDK::Models::PublicObjectID] Contains the Id of a Public Object
      end
    end
  end
end
