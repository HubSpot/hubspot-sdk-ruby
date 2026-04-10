# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class PublicWideStatus < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::PublicWideStatus,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The type of communication channel, with 'EMAIL' as the only supported option.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::PublicWideStatus::Channel::TaggedSymbol
          )
        end
        attr_accessor :channel

        # The subscription status of the contact, which can be 'SUBSCRIBED',
        # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::PublicWideStatus::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The email address of the contact.
        sig { returns(String) }
        attr_accessor :subscriber_id_string

        # The date and time when the status was recorded.
        sig { returns(Time) }
        attr_accessor :timestamp

        # The type of wide status, which can be 'PORTAL_WIDE' or 'BUSINESS_UNIT_WIDE'.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::PublicWideStatus::WideStatusType::TaggedSymbol
          )
        end
        attr_accessor :wide_status_type

        # The ID of the business unit associated with the status.
        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        sig do
          params(
            channel:
              HubSpotSDK::CommunicationPreferences::PublicWideStatus::Channel::OrSymbol,
            status:
              HubSpotSDK::CommunicationPreferences::PublicWideStatus::Status::OrSymbol,
            subscriber_id_string: String,
            timestamp: Time,
            wide_status_type:
              HubSpotSDK::CommunicationPreferences::PublicWideStatus::WideStatusType::OrSymbol,
            business_unit_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of communication channel, with 'EMAIL' as the only supported option.
          channel:,
          # The subscription status of the contact, which can be 'SUBSCRIBED',
          # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
          status:,
          # The email address of the contact.
          subscriber_id_string:,
          # The date and time when the status was recorded.
          timestamp:,
          # The type of wide status, which can be 'PORTAL_WIDE' or 'BUSINESS_UNIT_WIDE'.
          wide_status_type:,
          # The ID of the business unit associated with the status.
          business_unit_id: nil
        )
        end

        sig do
          override.returns(
            {
              channel:
                HubSpotSDK::CommunicationPreferences::PublicWideStatus::Channel::TaggedSymbol,
              status:
                HubSpotSDK::CommunicationPreferences::PublicWideStatus::Status::TaggedSymbol,
              subscriber_id_string: String,
              timestamp: Time,
              wide_status_type:
                HubSpotSDK::CommunicationPreferences::PublicWideStatus::WideStatusType::TaggedSymbol,
              business_unit_id: Integer
            }
          )
        end
        def to_hash
        end

        # The type of communication channel, with 'EMAIL' as the only supported option.
        module Channel
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PublicWideStatus::Channel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::CommunicationPreferences::PublicWideStatus::Channel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicWideStatus::Channel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The subscription status of the contact, which can be 'SUBSCRIBED',
        # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PublicWideStatus::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_SPECIFIED =
            T.let(
              :NOT_SPECIFIED,
              HubSpotSDK::CommunicationPreferences::PublicWideStatus::Status::TaggedSymbol
            )
          SUBSCRIBED =
            T.let(
              :SUBSCRIBED,
              HubSpotSDK::CommunicationPreferences::PublicWideStatus::Status::TaggedSymbol
            )
          UNSUBSCRIBED =
            T.let(
              :UNSUBSCRIBED,
              HubSpotSDK::CommunicationPreferences::PublicWideStatus::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicWideStatus::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of wide status, which can be 'PORTAL_WIDE' or 'BUSINESS_UNIT_WIDE'.
        module WideStatusType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::PublicWideStatus::WideStatusType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS_UNIT_WIDE =
            T.let(
              :BUSINESS_UNIT_WIDE,
              HubSpotSDK::CommunicationPreferences::PublicWideStatus::WideStatusType::TaggedSymbol
            )
          PORTAL_WIDE =
            T.let(
              :PORTAL_WIDE,
              HubSpotSDK::CommunicationPreferences::PublicWideStatus::WideStatusType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::PublicWideStatus::WideStatusType::TaggedSymbol
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
