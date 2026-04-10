# frozen_string_literal: true

module HubSpotSDK
  module Models
    module BusinessUnits
      # @see HubSpotSDK::Resources::BusinessUnits::BusinessUnitEntries#get_by_user_id
      class BusinessUnitEntryGetByUserIDParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute name
        #
        #   @return [Array<String>, nil]
        optional :name, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(user_id:, name: nil, properties: nil, request_options: {})
        #   @param user_id [String]
        #   @param name [Array<String>]
        #   @param properties [Array<String>]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
