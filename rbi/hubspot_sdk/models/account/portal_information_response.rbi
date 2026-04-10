# typed: strong

module HubSpotSDK
  module Models
    module Account
      class PortalInformationResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Account::PortalInformationResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The type of account, such as APP_DEVELOPER, DEVELOPER_TEST, SANDBOX, or
        # STANDARD.
        sig do
          returns(
            HubSpotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
          )
        end
        attr_accessor :account_type

        sig { returns(T::Array[String]) }
        attr_accessor :additional_currencies

        # The primary currency used by the company.
        sig { returns(String) }
        attr_accessor :company_currency

        # The location where the account's data is hosted.
        sig { returns(String) }
        attr_accessor :data_hosting_location

        # The unique identifier for the HubSpot account.
        sig { returns(Integer) }
        attr_accessor :portal_id

        # The time zone in which the account operates.
        sig { returns(String) }
        attr_accessor :time_zone

        # The domain used for accessing the HubSpot user interface.
        sig { returns(String) }
        attr_accessor :ui_domain

        # The time zone offset from UTC in hours and minutes.
        sig { returns(String) }
        attr_accessor :utc_offset

        # The time zone offset from UTC in milliseconds.
        sig { returns(Integer) }
        attr_accessor :utc_offset_milliseconds

        sig do
          params(
            account_type:
              HubSpotSDK::Account::PortalInformationResponse::AccountType::OrSymbol,
            additional_currencies: T::Array[String],
            company_currency: String,
            data_hosting_location: String,
            portal_id: Integer,
            time_zone: String,
            ui_domain: String,
            utc_offset: String,
            utc_offset_milliseconds: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of account, such as APP_DEVELOPER, DEVELOPER_TEST, SANDBOX, or
          # STANDARD.
          account_type:,
          additional_currencies:,
          # The primary currency used by the company.
          company_currency:,
          # The location where the account's data is hosted.
          data_hosting_location:,
          # The unique identifier for the HubSpot account.
          portal_id:,
          # The time zone in which the account operates.
          time_zone:,
          # The domain used for accessing the HubSpot user interface.
          ui_domain:,
          # The time zone offset from UTC in hours and minutes.
          utc_offset:,
          # The time zone offset from UTC in milliseconds.
          utc_offset_milliseconds:
        )
        end

        sig do
          override.returns(
            {
              account_type:
                HubSpotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol,
              additional_currencies: T::Array[String],
              company_currency: String,
              data_hosting_location: String,
              portal_id: Integer,
              time_zone: String,
              ui_domain: String,
              utc_offset: String,
              utc_offset_milliseconds: Integer
            }
          )
        end
        def to_hash
        end

        # The type of account, such as APP_DEVELOPER, DEVELOPER_TEST, SANDBOX, or
        # STANDARD.
        module AccountType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Account::PortalInformationResponse::AccountType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APP_DEVELOPER =
            T.let(
              :APP_DEVELOPER,
              HubSpotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
            )
          DEVELOPER_TEST =
            T.let(
              :DEVELOPER_TEST,
              HubSpotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
            )
          SANDBOX =
            T.let(
              :SANDBOX,
              HubSpotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
            )
          STANDARD =
            T.let(
              :STANDARD,
              HubSpotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
