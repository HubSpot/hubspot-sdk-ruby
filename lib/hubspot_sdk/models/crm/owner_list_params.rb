# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Owners#list
      class OwnerListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute archived
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, archived: nil, email: nil, limit: nil, request_options: {})
        #   @param after [String]
        #   @param archived [Boolean]
        #   @param email [String]
        #   @param limit [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
