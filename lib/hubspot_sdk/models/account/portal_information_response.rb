# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Account
      # @see HubSpotSDK::Resources::Account#get
      class PortalInformationResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute account_type
        #   The type of account, such as APP_DEVELOPER, DEVELOPER_TEST, SANDBOX, or
        #   STANDARD.
        #
        #   @return [Symbol, HubSpotSDK::Models::Account::PortalInformationResponse::AccountType]
        required :account_type,
                 enum: -> { HubSpotSDK::Account::PortalInformationResponse::AccountType },
                 api_name: :accountType

        # @!attribute additional_currencies
        #
        #   @return [Array<String>]
        required :additional_currencies,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :additionalCurrencies

        # @!attribute company_currency
        #   The primary currency used by the company.
        #
        #   @return [String]
        required :company_currency, String, api_name: :companyCurrency

        # @!attribute data_hosting_location
        #   The location where the account's data is hosted.
        #
        #   @return [String]
        required :data_hosting_location, String, api_name: :dataHostingLocation

        # @!attribute portal_id
        #   The unique identifier for the HubSpot account.
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute time_zone
        #   The time zone in which the account operates.
        #
        #   @return [String]
        required :time_zone, String, api_name: :timeZone

        # @!attribute ui_domain
        #   The domain used for accessing the HubSpot user interface.
        #
        #   @return [String]
        required :ui_domain, String, api_name: :uiDomain

        # @!attribute utc_offset
        #   The time zone offset from UTC in hours and minutes.
        #
        #   @return [String]
        required :utc_offset, String, api_name: :utcOffset

        # @!attribute utc_offset_milliseconds
        #   The time zone offset from UTC in milliseconds.
        #
        #   @return [Integer]
        required :utc_offset_milliseconds, Integer, api_name: :utcOffsetMilliseconds

        # @!method initialize(account_type:, additional_currencies:, company_currency:, data_hosting_location:, portal_id:, time_zone:, ui_domain:, utc_offset:, utc_offset_milliseconds:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Account::PortalInformationResponse} for more details.
        #
        #   @param account_type [Symbol, HubSpotSDK::Models::Account::PortalInformationResponse::AccountType] The type of account, such as APP_DEVELOPER, DEVELOPER_TEST, SANDBOX, or STANDARD
        #
        #   @param additional_currencies [Array<String>]
        #
        #   @param company_currency [String] The primary currency used by the company.
        #
        #   @param data_hosting_location [String] The location where the account's data is hosted.
        #
        #   @param portal_id [Integer] The unique identifier for the HubSpot account.
        #
        #   @param time_zone [String] The time zone in which the account operates.
        #
        #   @param ui_domain [String] The domain used for accessing the HubSpot user interface.
        #
        #   @param utc_offset [String] The time zone offset from UTC in hours and minutes.
        #
        #   @param utc_offset_milliseconds [Integer] The time zone offset from UTC in milliseconds.

        # The type of account, such as APP_DEVELOPER, DEVELOPER_TEST, SANDBOX, or
        # STANDARD.
        #
        # @see HubSpotSDK::Models::Account::PortalInformationResponse#account_type
        module AccountType
          extend HubSpotSDK::Internal::Type::Enum

          APP_DEVELOPER = :APP_DEVELOPER
          DEVELOPER_TEST = :DEVELOPER_TEST
          SANDBOX = :SANDBOX
          STANDARD = :STANDARD

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
