# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#update_filters
      class ListUpdateResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute updated_list
        #   An object list definition.
        #
        #   @return [HubspotSDK::Models::Crm::PublicObjectList, nil]
        optional :updated_list, -> { HubspotSDK::Crm::PublicObjectList }, api_name: :updatedList

        # @!method initialize(updated_list: nil)
        #   The updated definition of the list in response to a list update request.
        #
        #   @param updated_list [HubspotSDK::Models::Crm::PublicObjectList] An object list definition.
      end
    end
  end
end
