# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#get_revision
      class VersionPublicEmail < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of this marketing email version.
        #
        #   @return [String]
        required :id, String

        # @!attribute object
        #   A marketing email
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmail]
        required :object, -> { HubspotSDK::Marketing::PublicEmail }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute user
        #   Model definition for a version user. Contains addition information about the
        #   user who created a version.
        #
        #   @return [HubspotSDK::Models::VersionUser]
        required :user, -> { HubspotSDK::VersionUser }

        # @!method initialize(id:, object:, updated_at:, user:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::VersionPublicEmail} for more details.
        #
        #   Model definition for a marketing email version. Contains metadata describing the
        #   version of the marketing email. It can be used to view edit history of a
        #   marketing email.
        #
        #   @param id [String] ID of this marketing email version.
        #
        #   @param object [HubspotSDK::Models::Marketing::PublicEmail] A marketing email
        #
        #   @param updated_at [Time]
        #
        #   @param user [HubspotSDK::Models::VersionUser] Model definition for a version user. Contains addition information about the use
      end
    end
  end
end
