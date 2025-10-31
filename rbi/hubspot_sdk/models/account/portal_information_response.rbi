# typed: strong

module HubspotSDK
  module Models
    module Account
      class PortalInformationResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Account::PortalInformationResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
          )
        end
        attr_accessor :account_type

        sig { returns(T::Array[String]) }
        attr_accessor :additional_currencies

        sig { returns(String) }
        attr_accessor :company_currency

        sig { returns(String) }
        attr_accessor :data_hosting_location

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig { returns(String) }
        attr_accessor :time_zone

        sig { returns(String) }
        attr_accessor :ui_domain

        sig { returns(String) }
        attr_accessor :utc_offset

        sig { returns(Integer) }
        attr_accessor :utc_offset_milliseconds

        sig do
          params(
            account_type:
              HubspotSDK::Account::PortalInformationResponse::AccountType::OrSymbol,
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
          account_type:,
          additional_currencies:,
          company_currency:,
          data_hosting_location:,
          portal_id:,
          time_zone:,
          ui_domain:,
          utc_offset:,
          utc_offset_milliseconds:
        )
        end

        sig do
          override.returns(
            {
              account_type:
                HubspotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol,
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

        module AccountType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Account::PortalInformationResponse::AccountType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDARD =
            T.let(
              :STANDARD,
              HubspotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
            )
          DEVELOPER_TEST =
            T.let(
              :DEVELOPER_TEST,
              HubspotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
            )
          SANDBOX =
            T.let(
              :SANDBOX,
              HubspotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
            )
          APP_DEVELOPER =
            T.let(
              :APP_DEVELOPER,
              HubspotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Account::PortalInformationResponse::AccountType::TaggedSymbol
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
