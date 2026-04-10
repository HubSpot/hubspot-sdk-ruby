# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#get
      class EmailGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute email_ids
        #
        #   @return [Array<Integer>, nil]
        optional :email_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute end_timestamp
        #
        #   @return [String, nil]
        optional :end_timestamp, String

        # @!attribute property
        #
        #   @return [String, nil]
        optional :property, String

        # @!attribute start_timestamp
        #
        #   @return [String, nil]
        optional :start_timestamp, String

        # @!method initialize(email_ids: nil, end_timestamp: nil, property: nil, start_timestamp: nil, request_options: {})
        #   @param email_ids [Array<Integer>]
        #   @param end_timestamp [String]
        #   @param property [String]
        #   @param start_timestamp [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
