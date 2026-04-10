# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#update_list_filters
      class ListUpdateResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute updated_list
        #
        #   @return [HubSpotSDK::Models::Crm::PublicObjectList, nil]
        optional :updated_list, -> { HubSpotSDK::Crm::PublicObjectList }, api_name: :updatedList

        # @!method initialize(updated_list: nil)
        #   @param updated_list [HubSpotSDK::Models::Crm::PublicObjectList]
      end
    end
  end
end
