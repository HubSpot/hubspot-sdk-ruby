# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#list
      class ListsByIDResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute lists
        #   The object list definitions.
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicObjectList>]
        required :lists, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicObjectList] }

        # @!method initialize(lists:)
        #   @param lists [Array<HubspotSDK::Models::Crm::PublicObjectList>] The object list definitions.
      end
    end
  end
end
