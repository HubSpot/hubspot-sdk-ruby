# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#list_revisions
      class VersionPublicEmail < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of this marketing email version.
        #
        #   @return [String]
        required :id, String

        # @!attribute object
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmail]
        required :object, -> { HubspotSDK::Marketing::PublicEmail }

        # @!attribute updated_at
        #   The date and time of the last update to the email, in ISO8601 representation.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute user
        #
        #   @return [HubspotSDK::Models::VersionUser]
        required :user, -> { HubspotSDK::VersionUser }

        # @!method initialize(id:, object:, updated_at:, user:)
        #   @param id [String] ID of this marketing email version.
        #
        #   @param object [HubspotSDK::Models::Marketing::PublicEmail]
        #
        #   @param updated_at [Time] The date and time of the last update to the email, in ISO8601 representation.
        #
        #   @param user [HubspotSDK::Models::VersionUser]
      end
    end
  end
end
