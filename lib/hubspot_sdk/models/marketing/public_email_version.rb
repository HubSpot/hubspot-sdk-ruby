# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#get_revision
      class PublicEmailVersion < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute object
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicEmail]
        required :object, -> { HubSpotSDK::Marketing::PublicEmail }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute user
        #
        #   @return [HubSpotSDK::Models::VersionUser]
        required :user, -> { HubSpotSDK::VersionUser }

        # @!method initialize(id:, object:, updated_at:, user:)
        #   @param id [String]
        #   @param object [HubSpotSDK::Models::Marketing::PublicEmail]
        #   @param updated_at [Time]
        #   @param user [HubSpotSDK::Models::VersionUser]
      end
    end
  end
end
