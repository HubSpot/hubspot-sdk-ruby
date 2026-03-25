# frozen_string_literal: true

module HubspotSDK
  module Models
    module BusinessUnits
      # @see HubspotSDK::Resources::BusinessUnits::BusinessUnits#get_by_user_id
      class BusinessUnitGetByUserIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute name
        #
        #   @return [Array<String>, nil]
        optional :name, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(user_id:, name: nil, properties: nil, request_options: {})
        #   @param user_id [String]
        #   @param name [Array<String>]
        #   @param properties [Array<String>]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
