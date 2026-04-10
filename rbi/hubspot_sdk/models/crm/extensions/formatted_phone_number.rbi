# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class FormattedPhoneNumber < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The phone number formatted in E.164 standard.
          sig { returns(String) }
          attr_accessor :e164_number

          # The type of phone number, with accepted values including FIXED_LINE, MOBILE,
          # VOIP, and others.
          sig do
            returns(
              HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::OrSymbol
            )
          end
          attr_accessor :phone_number_type

          # The extension number associated with the phone number.
          sig { returns(T.nilable(String)) }
          attr_reader :extension

          sig { params(extension: String).void }
          attr_writer :extension

          sig do
            params(
              e164_number: String,
              phone_number_type:
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::OrSymbol,
              extension: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The phone number formatted in E.164 standard.
            e164_number:,
            # The type of phone number, with accepted values including FIXED_LINE, MOBILE,
            # VOIP, and others.
            phone_number_type:,
            # The extension number associated with the phone number.
            extension: nil
          )
          end

          sig do
            override.returns(
              {
                e164_number: String,
                phone_number_type:
                  HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::OrSymbol,
                extension: String
              }
            )
          end
          def to_hash
          end

          # The type of phone number, with accepted values including FIXED_LINE, MOBILE,
          # VOIP, and others.
          module PhoneNumberType
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FIXED_LINE =
              T.let(
                :FIXED_LINE,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            FIXED_LINE_OR_MOBILE =
              T.let(
                :FIXED_LINE_OR_MOBILE,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            MOBILE =
              T.let(
                :MOBILE,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            PAGER =
              T.let(
                :PAGER,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            PERSONAL_NUMBER =
              T.let(
                :PERSONAL_NUMBER,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            PREMIUM_RATE =
              T.let(
                :PREMIUM_RATE,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            SHARED_COST =
              T.let(
                :SHARED_COST,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            TOLL_FREE =
              T.let(
                :TOLL_FREE,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            UAN =
              T.let(
                :UAN,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            VOICEMAIL =
              T.let(
                :VOICEMAIL,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )
            VOIP =
              T.let(
                :VOIP,
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType::TaggedSymbol
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
