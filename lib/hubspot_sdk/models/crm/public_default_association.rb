# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicDefaultAssociation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute association_spec
        #   Defines the type, direction, and details of the relationship between two CRM
        #   objects.
        #
        #   @return [HubspotSDK::Models::Crm::Associations::AssociationSpec1]
        required :association_spec,
                 -> { HubspotSDK::Crm::Associations::AssociationSpec1 },
                 api_name: :associationSpec

        # @!attribute from
        #
        #   @return [HubspotSDK::Models::PublicObjectID]
        required :from, -> { HubspotSDK::PublicObjectID }

        # @!attribute to
        #
        #   @return [HubspotSDK::Models::PublicObjectID]
        required :to, -> { HubspotSDK::PublicObjectID }

        # @!method initialize(association_spec:, from:, to:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicDefaultAssociation} for more details.
        #
        #   @param association_spec [HubspotSDK::Models::Crm::Associations::AssociationSpec1] Defines the type, direction, and details of the relationship between two CRM obj
        #
        #   @param from [HubspotSDK::Models::PublicObjectID]
        #
        #   @param to [HubspotSDK::Models::PublicObjectID]
      end
    end
  end
end
