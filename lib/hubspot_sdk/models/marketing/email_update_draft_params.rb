# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#update_draft
      class EmailUpdateDraftParams < HubSpotSDK::Models::Marketing::EmailUpdateRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute email_id
        #
        #   @return [String]
        required :email_id, String

        # @!method initialize(email_id:, request_options: {})
        #   @param email_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
