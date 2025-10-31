# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::Users#list
      class UserListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   Results will display maximum 100 users per page. Additional results will be on
        #   the next page.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The number of users to retrieve
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Settings::UserListParams} for more details.
        #
        #   @param after [String] Results will display maximum 100 users per page. Additional results will be on t
        #
        #   @param limit [Integer] The number of users to retrieve
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
