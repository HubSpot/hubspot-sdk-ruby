# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationMultiWithLabel < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute from
        #   Contains the Id of a Public Object
        #
        #   @return [HubSpotSDK::Models::PublicObjectID]
        required :from, -> { HubSpotSDK::PublicObjectID }

        # @!attribute to
        #
        #   @return [Array<HubSpotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
        required :to, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::MultiAssociatedObjectWithLabel] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(from:, to:, paging: nil)
        #   @param from [HubSpotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param to [Array<HubSpotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
        #
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
