# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#create
      class ListCreateResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [HubSpotSDK::Models::Crm::PublicObjectList]
        required :list, -> { HubSpotSDK::Crm::PublicObjectList }

        # @!method initialize(list:)
        #   @param list [HubSpotSDK::Models::Crm::PublicObjectList]
      end
    end
  end
end
