# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        class PublicDefaultAssociation < HubspotSDK::Internal::Type::BaseModel
          # @!attribute association_spec
          #   Defines the type, direction, and details of the relationship between two CRM
          #   objects.
          #
          #   @return [HubspotSDK::Models::AssociationSpec]
          required :association_spec, -> { HubspotSDK::AssociationSpec }, api_name: :associationSpec

          # @!attribute from
          #   Contains the Id of a Public Object
          #
          #   @return [HubspotSDK::Models::PublicObjectID]
          required :from, -> { HubspotSDK::PublicObjectID }

          # @!attribute to
          #   Contains the Id of a Public Object
          #
          #   @return [HubspotSDK::Models::PublicObjectID]
          required :to, -> { HubspotSDK::PublicObjectID }

          # @!method initialize(association_spec:, from:, to:)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Objects::PublicDefaultAssociation} for more details.
          #
          #   @param association_spec [HubspotSDK::Models::AssociationSpec] Defines the type, direction, and details of the relationship between two CRM obj
          #
          #   @param from [HubspotSDK::Models::PublicObjectID] Contains the Id of a Public Object
          #
          #   @param to [HubspotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        end
      end
    end
  end
end
