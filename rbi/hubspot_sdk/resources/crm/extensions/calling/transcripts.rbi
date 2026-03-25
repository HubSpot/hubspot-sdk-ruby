# typed: strong

module HubspotSDK
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
                    HubspotSDK::Crm::Extensions::Calling::TranscriptCreateUtterance::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Crm::Extensions::Calling::TranscriptCreateResponse
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
                request_options: HubspotSDK::RequestOptions::OrHash
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
                  HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::OrSymbol,
                from_number:
                  HubspotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash,
                potential_recipient_user_ids: T::Array[Integer],
                to_number:
                  HubspotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash,
                call_started_timestamp: Time,
                duration_seconds: Integer,
                user_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse
              )
            end
            def create_inbound_call(
              create_engagement:,
              engagement_properties:,
              external_call_id:,
              final_call_status:,
              from_number:,
              potential_recipient_user_ids:,
              to_number:,
              call_started_timestamp: nil,
              duration_seconds: nil,
              user_id: nil,
              request_options: {}
            )
            end

            sig do
              params(
                transcript_id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Crm::Extensions::Calling::TranscriptResponse
              )
            end
            def get(transcript_id, request_options: {})
            end

            # @api private
            sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
