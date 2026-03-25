# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#update_list_filters
      class ListUpdateResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute updated_list
        #
        #   @return [HubspotSDK::Models::Crm::PublicObjectList, nil]
        optional :updated_list, -> { HubspotSDK::Crm::PublicObjectList }, api_name: :updatedList

        # @!method initialize(updated_list: nil)
        #   @param updated_list [HubspotSDK::Models::Crm::PublicObjectList]
      end
    end
  end
end
