# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      # @see HubspotSDK::Resources::Account::Activity#list_security_activities
      class HydratedCriticalAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the activity.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time the activity took place.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute type
        #   The type of activity.
        #
        #   @return [String]
        required :type, String

        # @!attribute user_id
        #   The user's unique ID.
        #
        #   @return [Integer]
        required :user_id, Integer, api_name: :userId

        # @!attribute acting_user
        #   Email address of the user associated with the activity.
        #
        #   @return [String, nil]
        optional :acting_user, String, api_name: :actingUser

        # @!attribute country_code
        #   The approximate country code.
        #
        #   @return [String, nil]
        optional :country_code, String, api_name: :countryCode

        # @!attribute info_url
        #   A link to the URL where the action was taken in the account.
        #
        #   @return [String, nil]
        optional :info_url, String, api_name: :infoUrl

        # @!attribute ip_address
        #   IP address where the activity originated.
        #
        #   @return [String, nil]
        optional :ip_address, String, api_name: :ipAddress

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!attribute object_id_
        #   The ID of the affected object.
        #
        #   @return [String, nil]
        optional :object_id_, String, api_name: :objectId

        # @!attribute region_code
        #   The approximate region code.
        #
        #   @return [String, nil]
        optional :region_code, String, api_name: :regionCode

        # @!method initialize(id:, created_at:, type:, user_id:, acting_user: nil, country_code: nil, info_url: nil, ip_address: nil, location: nil, object_id_: nil, region_code: nil)
        #   Details about the a particular security activity for a HubSpot account.
        #
        #   @param id [String] The unique ID of the activity.
        #
        #   @param created_at [Time] The time the activity took place.
        #
        #   @param type [String] The type of activity.
        #
        #   @param user_id [Integer] The user's unique ID.
        #
        #   @param acting_user [String] Email address of the user associated with the activity.
        #
        #   @param country_code [String] The approximate country code.
        #
        #   @param info_url [String] A link to the URL where the action was taken in the account.
        #
        #   @param ip_address [String] IP address where the activity originated.
        #
        #   @param location [String]
        #
        #   @param object_id_ [String] The ID of the affected object.
        #
        #   @param region_code [String] The approximate region code.
      end
    end
  end
end
