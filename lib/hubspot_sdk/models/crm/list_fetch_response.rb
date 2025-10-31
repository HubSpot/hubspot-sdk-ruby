# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Lists#get
      class ListFetchResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute list
        #   An object list definition.
        #
        #   @return [HubspotSDK::Models::CRM::PublicObjectList]
        required :list, -> { HubspotSDK::CRM::PublicObjectList }

        # @!method initialize(list:)
        #   The response for a list fetch request.
        #
        #   @param list [HubspotSDK::Models::CRM::PublicObjectList] An object list definition.
      end
    end
  end
end
