# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#get
      class ListFetchResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [HubspotSDK::Models::Crm::PublicObjectList]
        required :list, -> { HubspotSDK::Crm::PublicObjectList }

        # @!method initialize(list:)
        #   @param list [HubspotSDK::Models::Crm::PublicObjectList]
      end
    end
  end
end
