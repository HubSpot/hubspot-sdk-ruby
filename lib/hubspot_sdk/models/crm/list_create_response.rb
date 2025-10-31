# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Lists#create
      class ListCreateResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute list
        #   An object list definition.
        #
        #   @return [HubspotSDK::Models::CRM::PublicObjectList]
        required :list, -> { HubspotSDK::CRM::PublicObjectList }

        # @!method initialize(list:)
        #   The response for a list create request.
        #
        #   @param list [HubspotSDK::Models::CRM::PublicObjectList] An object list definition.
      end
    end
  end
end
