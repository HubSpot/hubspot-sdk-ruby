# frozen_string_literal: true

module HubspotSDK
  module Models
    module BusinessUnits
      # @see HubspotSDK::Resources::BusinessUnits#get_by_user_id
      class BusinessUnitGetByUserIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute name
        #   The names of Business Units to retrieve. If empty or not provided, then all
        #   associated Business Units will be returned.
        #
        #   @return [Array<String>, nil]
        optional :name, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute properties
        #   The names of properties to optionally include in the response body. The only
        #   valid value is `logoMetadata`.
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(name: nil, properties: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::BusinessUnits::BusinessUnitGetByUserIDParams} for more
        #   details.
        #
        #   @param name [Array<String>] The names of Business Units to retrieve. If empty or not provided, then all asso
        #
        #   @param properties [Array<String>] The names of properties to optionally include in the response body. The only val
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
