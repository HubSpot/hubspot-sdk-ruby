# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#get_revision
      class PublicEmailVersion < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute object
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmail]
        required :object, -> { HubspotSDK::Marketing::PublicEmail }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute user
        #
        #   @return [HubspotSDK::Models::VersionUser]
        required :user, -> { HubspotSDK::VersionUser }

        # @!method initialize(id:, object:, updated_at:, user:)
        #   @param id [String]
        #   @param object [HubspotSDK::Models::Marketing::PublicEmail]
        #   @param updated_at [Time]
        #   @param user [HubspotSDK::Models::VersionUser]
      end
    end
  end
end
