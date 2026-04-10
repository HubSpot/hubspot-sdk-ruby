# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CompletedThirdPartyCallRequest < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # Indicates whether an engagement should be created for the call.
          sig { returns(T::Boolean) }
          attr_accessor :create_engagement

          # Contains additional properties related to the engagement.
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :engagement_properties

          # The unique identifier for the call from an external system.
          sig { returns(String) }
          attr_accessor :external_call_id

          # The final status of the call, with accepted values including: BUSY,
          # CALLING_CRM_USER, CANCELED, COMPLETED, CONNECTING, FAILED, HOLD, IN_PROGRESS,
          # MISSED, NO_ANSWER, QUEUED, RINGING, UNKNOWN.
          sig do
            returns(
              HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::OrSymbol
            )
          end
          attr_accessor :final_call_status

          sig { returns(HubSpotSDK::Crm::Extensions::FormattedPhoneNumber) }
          attr_reader :from_number

          sig do
            params(
              from_number:
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash
            ).void
          end
          attr_writer :from_number

          sig { returns(T::Array[Integer]) }
          attr_accessor :potential_recipient_user_ids

          sig { returns(HubSpotSDK::Crm::Extensions::FormattedPhoneNumber) }
          attr_reader :to_number

          sig do
            params(
              to_number:
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash
            ).void
          end
          attr_writer :to_number

          # The timestamp indicating when the call started, formatted as a date-time string.
          sig { returns(T.nilable(Time)) }
          attr_reader :call_started_timestamp

          sig { params(call_started_timestamp: Time).void }
          attr_writer :call_started_timestamp

          # The duration of the call in seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :duration_seconds

          sig { params(duration_seconds: Integer).void }
          attr_writer :duration_seconds

          # The ID of the user associated with the call.
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
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::OrSymbol,
              from_number:
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash,
              potential_recipient_user_ids: T::Array[Integer],
              to_number:
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash,
              call_started_timestamp: Time,
              duration_seconds: Integer,
              user_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Indicates whether an engagement should be created for the call.
            create_engagement:,
            # Contains additional properties related to the engagement.
            engagement_properties:,
            # The unique identifier for the call from an external system.
            external_call_id:,
            # The final status of the call, with accepted values including: BUSY,
            # CALLING_CRM_USER, CANCELED, COMPLETED, CONNECTING, FAILED, HOLD, IN_PROGRESS,
            # MISSED, NO_ANSWER, QUEUED, RINGING, UNKNOWN.
            final_call_status:,
            from_number:,
            potential_recipient_user_ids:,
            to_number:,
            # The timestamp indicating when the call started, formatted as a date-time string.
            call_started_timestamp: nil,
            # The duration of the call in seconds.
            duration_seconds: nil,
            # The ID of the user associated with the call.
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
                  HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::OrSymbol,
                from_number: HubSpotSDK::Crm::Extensions::FormattedPhoneNumber,
                potential_recipient_user_ids: T::Array[Integer],
                to_number: HubSpotSDK::Crm::Extensions::FormattedPhoneNumber,
                call_started_timestamp: Time,
                duration_seconds: Integer,
                user_id: Integer
              }
            )
          end
          def to_hash
          end

          # The final status of the call, with accepted values including: BUSY,
          # CALLING_CRM_USER, CANCELED, COMPLETED, CONNECTING, FAILED, HOLD, IN_PROGRESS,
          # MISSED, NO_ANSWER, QUEUED, RINGING, UNKNOWN.
          module FinalCallStatus
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUSY =
              T.let(
                :BUSY,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            CALLING_CRM_USER =
              T.let(
                :CALLING_CRM_USER,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            CANCELED =
              T.let(
                :CANCELED,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :COMPLETED,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            CONNECTING =
              T.let(
                :CONNECTING,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :FAILED,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            HOLD =
              T.let(
                :HOLD,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :IN_PROGRESS,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            MISSED =
              T.let(
                :MISSED,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            NO_ANSWER =
              T.let(
                :NO_ANSWER,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            QUEUED =
              T.let(
                :QUEUED,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            RINGING =
              T.let(
                :RINGING,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::TaggedSymbol
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
