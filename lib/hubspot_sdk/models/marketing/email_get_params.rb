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
        #   @return [Time, nil]
        optional :end_timestamp, Time

        # @!attribute property
        #
        #   @return [String, nil]
        optional :property, String

        # @!attribute start_timestamp
        #
        #   @return [Time, nil]
        optional :start_timestamp, Time

        # @!method initialize(email_ids: nil, end_timestamp: nil, property: nil, start_timestamp: nil, request_options: {})
        #   @param email_ids [Array<Integer>]
        #   @param end_timestamp [Time]
        #   @param property [String]
        #   @param start_timestamp [Time]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
