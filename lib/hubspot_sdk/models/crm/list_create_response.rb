# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#create
      class ListCreateResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute list
        #   An object list definition.
        #
        #   @return [HubspotSDK::Models::Crm::PublicObjectList]
        required :list, -> { HubspotSDK::Crm::PublicObjectList }

        # @!method initialize(list:)
        #   The response for a list create request.
        #
        #   @param list [HubspotSDK::Models::Crm::PublicObjectList] An object list definition.
      end
    end
  end
end
