# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#update
      class EmailUpdateParams < HubspotSDK::Models::Marketing::EmailUpdateRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute email_id
        #
        #   @return [String]
        required :email_id, String

        # @!attribute query_archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :query_archived, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(email_id:, query_archived: nil, request_options: {})
        #   @param email_id [String]
        #
        #   @param query_archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
