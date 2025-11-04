# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      # @see HubspotSDK::Resources::Account::Activity#list_login_activities
      class PublicLoginAudit < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The login activity's unique ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute login_at
        #   The time the login took place.
        #
        #   @return [Time]
        required :login_at, Time, api_name: :loginAt

        # @!attribute login_succeeded
        #   Whether the login was successful or not.
        #
        #   @return [Boolean]
        required :login_succeeded, HubspotSDK::Internal::Type::Boolean, api_name: :loginSucceeded

        # @!attribute country_code
        #   The approximate country code of the login.
        #
        #   @return [String, nil]
        optional :country_code, String, api_name: :countryCode

        # @!attribute email
        #   Email address of the user associated with the login.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute ip_address
        #   IP address where the activity originated.
        #
        #   @return [String, nil]
        optional :ip_address, String, api_name: :ipAddress

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!attribute region_code
        #   The approximate region code of the login.
        #
        #   @return [String, nil]
        optional :region_code, String, api_name: :regionCode

        # @!attribute user_agent
        #   Information about the device used for logging in.
        #
        #   @return [String, nil]
        optional :user_agent, String, api_name: :userAgent

        # @!attribute user_id
        #   The user's unique ID.
        #
        #   @return [Integer, nil]
        optional :user_id, Integer, api_name: :userId

        # @!method initialize(id:, login_at:, login_succeeded:, country_code: nil, email: nil, ip_address: nil, location: nil, region_code: nil, user_agent: nil, user_id: nil)
        #   Details about the a particular login activity for a HubSpot account.
        #
        #   @param id [String] The login activity's unique ID.
        #
        #   @param login_at [Time] The time the login took place.
        #
        #   @param login_succeeded [Boolean] Whether the login was successful or not.
        #
        #   @param country_code [String] The approximate country code of the login.
        #
        #   @param email [String] Email address of the user associated with the login.
        #
        #   @param ip_address [String] IP address where the activity originated.
        #
        #   @param location [String]
        #
        #   @param region_code [String] The approximate region code of the login.
        #
        #   @param user_agent [String] Information about the device used for logging in.
        #
        #   @param user_id [Integer] The user's unique ID.
      end
    end
  end
end
