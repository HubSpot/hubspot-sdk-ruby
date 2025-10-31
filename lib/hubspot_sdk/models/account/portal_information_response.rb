# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      class PortalInformationResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute account_type
        #
        #   @return [Symbol, HubspotSDK::Models::Account::PortalInformationResponse::AccountType]
        required :account_type,
                 enum: -> { HubspotSDK::Account::PortalInformationResponse::AccountType },
                 api_name: :accountType

        # @!attribute additional_currencies
        #
        #   @return [Array<String>]
        required :additional_currencies,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :additionalCurrencies

        # @!attribute company_currency
        #
        #   @return [String]
        required :company_currency, String, api_name: :companyCurrency

        # @!attribute data_hosting_location
        #
        #   @return [String]
        required :data_hosting_location, String, api_name: :dataHostingLocation

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute time_zone
        #
        #   @return [String]
        required :time_zone, String, api_name: :timeZone

        # @!attribute ui_domain
        #
        #   @return [String]
        required :ui_domain, String, api_name: :uiDomain

        # @!attribute utc_offset
        #
        #   @return [String]
        required :utc_offset, String, api_name: :utcOffset

        # @!attribute utc_offset_milliseconds
        #
        #   @return [Integer]
        required :utc_offset_milliseconds, Integer, api_name: :utcOffsetMilliseconds

        # @!method initialize(account_type:, additional_currencies:, company_currency:, data_hosting_location:, portal_id:, time_zone:, ui_domain:, utc_offset:, utc_offset_milliseconds:)
        #   @param account_type [Symbol, HubspotSDK::Models::Account::PortalInformationResponse::AccountType]
        #   @param additional_currencies [Array<String>]
        #   @param company_currency [String]
        #   @param data_hosting_location [String]
        #   @param portal_id [Integer]
        #   @param time_zone [String]
        #   @param ui_domain [String]
        #   @param utc_offset [String]
        #   @param utc_offset_milliseconds [Integer]

        # @see HubspotSDK::Models::Account::PortalInformationResponse#account_type
        module AccountType
          extend HubspotSDK::Internal::Type::Enum

          STANDARD = :STANDARD
          DEVELOPER_TEST = :DEVELOPER_TEST
          SANDBOX = :SANDBOX
          APP_DEVELOPER = :APP_DEVELOPER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
