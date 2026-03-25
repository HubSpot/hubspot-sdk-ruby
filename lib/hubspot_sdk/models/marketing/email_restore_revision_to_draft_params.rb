# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#restore_revision_to_draft
      class EmailRestoreRevisionToDraftParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute email_id
        #
        #   @return [String]
        required :email_id, String

        # @!attribute revision_id
        #
        #   @return [Integer]
        required :revision_id, Integer

        # @!method initialize(email_id:, revision_id:, request_options: {})
        #   @param email_id [String]
        #   @param revision_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
