# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#update
      class EmailUpdateParams < HubSpotSDK::Models::Marketing::EmailUpdateRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute email_id
        #
        #   @return [String]
        required :email_id, String

        # @!attribute query_archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :query_archived, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(email_id:, query_archived: nil, request_options: {})
        #   @param email_id [String]
        #
        #   @param query_archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
