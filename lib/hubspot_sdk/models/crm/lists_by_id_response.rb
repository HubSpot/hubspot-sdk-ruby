# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#list
      class ListsByIDResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute lists
        #   The object list definitions.
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicObjectList>]
        required :lists, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicObjectList] }

        # @!method initialize(lists:)
        #   @param lists [Array<HubSpotSDK::Models::Crm::PublicObjectList>] The object list definitions.
      end
    end
  end
end
