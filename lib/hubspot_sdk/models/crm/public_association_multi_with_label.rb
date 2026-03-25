# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationMultiWithLabel < HubspotSDK::Internal::Type::BaseModel
        # @!attribute from
        #   Contains the Id of a Public Object
        #
        #   @return [HubspotSDK::Models::PublicObjectID]
        required :from, -> { HubspotSDK::PublicObjectID }

        # @!attribute to
        #
        #   @return [Array<HubspotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
        required :to, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::MultiAssociatedObjectWithLabel] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(from:, to:, paging: nil)
        #   @param from [HubspotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param to [Array<HubspotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
        #
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
