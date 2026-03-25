# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class FormattedPhoneNumber < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :e164_number

          sig do
            returns(
              HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::OrSymbol
            )
          end
          attr_accessor :phone_number_type

          sig { returns(T.nilable(String)) }
          attr_reader :extension

          sig { params(extension: String).void }
          attr_writer :extension

          sig do
            params(
              e164_number: String,
              phone_number_type:
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::OrSymbol,
              extension: String
            ).returns(T.attached_class)
          end
          def self.new(e164_number:, phone_number_type:, extension: nil)
          end

          sig do
            override.returns(
              {
                e164_number: String,
                phone_number_type:
                  HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::OrSymbol,
                extension: String
              }
            )
          end
          def to_hash
          end

          module PhoneNumberType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FIXED_LINE =
              T.let(
                :FIXED_LINE,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            FIXED_LINE_OR_MOBILE =
              T.let(
                :FIXED_LINE_OR_MOBILE,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            MOBILE =
              T.let(
                :MOBILE,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            PAGER =
              T.let(
                :PAGER,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            PERSONAL_NUMBER =
              T.let(
                :PERSONAL_NUMBER,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            PREMIUM_RATE =
              T.let(
                :PREMIUM_RATE,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            SHARED_COST =
              T.let(
                :SHARED_COST,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            TOLL_FREE =
              T.let(
                :TOLL_FREE,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            UAN =
              T.let(
                :UAN,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            VOICEMAIL =
              T.let(
                :VOICEMAIL,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            VOIP =
              T.let(
                :VOIP,
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
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
end
