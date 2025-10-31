# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicInListFilterMetadata < HubspotSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute in_list_type
      #
      #   @return [String]
      required :in_list_type, String, api_name: :inListType

      # @!method initialize(id:, in_list_type:)
      #   @param id [String]
      #   @param in_list_type [String]
    end
  end
end
