# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#get_revision
      class EmailGetRevisionParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute email_id
        #
        #   @return [String]
        required :email_id, String

        # @!attribute revision_id
        #
        #   @return [String]
        required :revision_id, String

        # @!method initialize(email_id:, revision_id:, request_options: {})
        #   @param email_id [String]
        #   @param revision_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
