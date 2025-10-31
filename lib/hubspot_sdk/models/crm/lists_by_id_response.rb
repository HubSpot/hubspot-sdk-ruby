# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Lists#list
      class ListsByIDResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute lists
        #   The object list definitions.
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicObjectList>]
        required :lists, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicObjectList] }

        # @!method initialize(lists:)
        #   The response object containing the lists found for a multi-list fetch.
        #
        #   @param lists [Array<HubspotSDK::Models::CRM::PublicObjectList>] The object list definitions.
      end
    end
  end
end
