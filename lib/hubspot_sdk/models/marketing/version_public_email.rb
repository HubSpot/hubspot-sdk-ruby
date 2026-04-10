# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#list_revisions
      class VersionPublicEmail < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of this marketing email version.
        #
        #   @return [String]
        required :id, String

        # @!attribute object
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicEmail]
        required :object, -> { HubSpotSDK::Marketing::PublicEmail }

        # @!attribute updated_at
        #   The date and time of the last update to the email, in ISO8601 representation.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute user
        #
        #   @return [HubSpotSDK::Models::VersionUser]
        required :user, -> { HubSpotSDK::VersionUser }

        # @!method initialize(id:, object:, updated_at:, user:)
        #   @param id [String] ID of this marketing email version.
        #
        #   @param object [HubSpotSDK::Models::Marketing::PublicEmail]
        #
        #   @param updated_at [Time] The date and time of the last update to the email, in ISO8601 representation.
        #
        #   @param user [HubSpotSDK::Models::VersionUser]
      end
    end
  end
end
