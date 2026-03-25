# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#delete
      class EmailDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute email_id
        #
        #   @return [String]
        required :email_id, String

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(email_id:, archived: nil, request_options: {})
        #   @param email_id [String]
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
