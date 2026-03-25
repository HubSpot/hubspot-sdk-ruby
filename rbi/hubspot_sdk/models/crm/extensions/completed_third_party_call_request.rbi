# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CompletedThirdPartyCallRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :create_engagement

          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :engagement_properties

          sig { returns(String) }
          attr_accessor :external_call_id

          sig do
            returns(
              HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::OrSymbol
            )
          end
          attr_accessor :final_call_status

          sig { returns(HubspotSDK::Crm::Extensions::FormattedPhoneNumber) }
          attr_reader :from_number

          sig do
            params(
              from_number:
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash
            ).void
          end
          attr_writer :from_number

          sig { returns(T::Array[Integer]) }
          attr_accessor :potential_recipient_user_ids

          sig { returns(HubspotSDK::Crm::Extensions::FormattedPhoneNumber) }
          attr_reader :to_number

          sig do
            params(
              to_number:
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash
            ).void
          end
          attr_writer :to_number

          sig { returns(T.nilable(Time)) }
          attr_reader :call_started_timestamp

          sig { params(call_started_timestamp: Time).void }
          attr_writer :call_started_timestamp

          sig { returns(T.nilable(Integer)) }
          attr_reader :duration_seconds

          sig { params(duration_seconds: Integer).void }
          attr_writer :duration_seconds

          sig { returns(T.nilable(Integer)) }
          attr_reader :user_id

          sig { params(user_id: Integer).void }
          attr_writer :user_id

          sig do
            params(
              create_engagement: T::Boolean,
              engagement_properties: T::Hash[Symbol, String],
              external_call_id: String,
              final_call_status:
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::OrSymbol,
              from_number:
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash,
              potential_recipient_user_ids: T::Array[Integer],
              to_number:
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash,
              call_started_timestamp: Time,
              duration_seconds: Integer,
              user_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            create_engagement:,
            engagement_properties:,
            external_call_id:,
            final_call_status:,
            from_number:,
            potential_recipient_user_ids:,
            to_number:,
            call_started_timestamp: nil,
            duration_seconds: nil,
            user_id: nil
          )
          end

          sig do
            override.returns(
              {
                create_engagement: T::Boolean,
                engagement_properties: T::Hash[Symbol, String],
                external_call_id: String,
                final_call_status:
                  HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::OrSymbol,
                from_number: HubspotSDK::Crm::Extensions::FormattedPhoneNumber,
                potential_recipient_user_ids: T::Array[Integer],
                to_number: HubspotSDK::Crm::Extensions::FormattedPhoneNumber,
                call_started_timestamp: Time,
                duration_seconds: Integer,
                user_id: Integer
              }
            )
          end
          def to_hash
          end

          module FinalCallStatus
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUSY =
              T.let(
                :BUSY,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            CALLING_CRM_USER =
              T.let(
                :CALLING_CRM_USER,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            CANCELED =
              T.let(
                :CANCELED,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :COMPLETED,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            CONNECTING =
              T.let(
                :CONNECTING,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :FAILED,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            HOLD =
              T.let(
                :HOLD,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :IN_PROGRESS,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            MISSED =
              T.let(
                :MISSED,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            NO_ANSWER =
              T.let(
                :NO_ANSWER,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            QUEUED =
              T.let(
                :QUEUED,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            RINGING =
              T.let(
                :RINGING,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
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
