# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          class Transcripts
            sig do
              params(
                engagement_id: Integer,
                transcript_create_utterances:
                  T::Array[
                    HubSpotSDK::Crm::Extensions::Calling::TranscriptCreateUtterance::OrHash
                  ],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(
                HubSpotSDK::Crm::Extensions::Calling::TranscriptCreateResponse
              )
            end
            def create(
              engagement_id:,
              transcript_create_utterances:,
              request_options: {}
            )
            end

            sig do
              params(
                transcript_id: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).void
            end
            def delete(transcript_id, request_options: {})
            end

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
                user_id: Integer,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse
              )
            end
            def create_inbound_call(
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
              user_id: nil,
              request_options: {}
            )
            end

            sig do
              params(
                transcript_id: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(
                HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse
              )
            end
            def get(transcript_id, request_options: {})
            end

            # @api private
            sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
