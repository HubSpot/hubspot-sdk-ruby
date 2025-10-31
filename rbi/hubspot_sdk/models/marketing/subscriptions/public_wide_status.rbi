# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class PublicWideStatus < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Subscriptions::PublicWideStatus,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The type of communication channel, with 'EMAIL' as the only supported option.
          sig do
            returns(
              HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Channel::TaggedSymbol
            )
          end
          attr_accessor :channel

          # The subscription status of the contact, which can be 'SUBSCRIBED',
          # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
          sig do
            returns(
              HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Status::TaggedSymbol
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
              HubspotSDK::Marketing::Subscriptions::PublicWideStatus::WideStatusType::TaggedSymbol
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
                HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Channel::OrSymbol,
              status:
                HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Status::OrSymbol,
              subscriber_id_string: String,
              timestamp: Time,
              wide_status_type:
                HubspotSDK::Marketing::Subscriptions::PublicWideStatus::WideStatusType::OrSymbol,
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
                  HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Channel::TaggedSymbol,
                status:
                  HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Status::TaggedSymbol,
                subscriber_id_string: String,
                timestamp: Time,
                wide_status_type:
                  HubspotSDK::Marketing::Subscriptions::PublicWideStatus::WideStatusType::TaggedSymbol,
                business_unit_id: Integer
              }
            )
          end
          def to_hash
          end

          # The type of communication channel, with 'EMAIL' as the only supported option.
          module Channel
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Channel
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL =
              T.let(
                :EMAIL,
                HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Channel::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Channel::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The subscription status of the contact, which can be 'SUBSCRIBED',
          # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
          module Status
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUBSCRIBED =
              T.let(
                :SUBSCRIBED,
                HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Status::TaggedSymbol
              )
            UNSUBSCRIBED =
              T.let(
                :UNSUBSCRIBED,
                HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Status::TaggedSymbol
              )
            NOT_SPECIFIED =
              T.let(
                :NOT_SPECIFIED,
                HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PublicWideStatus::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The type of wide status, which can be 'PORTAL_WIDE' or 'BUSINESS_UNIT_WIDE'.
          module WideStatusType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Subscriptions::PublicWideStatus::WideStatusType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PORTAL_WIDE =
              T.let(
                :PORTAL_WIDE,
                HubspotSDK::Marketing::Subscriptions::PublicWideStatus::WideStatusType::TaggedSymbol
              )
            BUSINESS_UNIT_WIDE =
              T.let(
                :BUSINESS_UNIT_WIDE,
                HubspotSDK::Marketing::Subscriptions::PublicWideStatus::WideStatusType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PublicWideStatus::WideStatusType::TaggedSymbol
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
