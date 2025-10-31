# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          class Transcripts
            sig do
              params(
                engagement_id: Integer,
                transcript_create_utterances:
                  T::Array[
                    HubspotSDK::CRM::Extensions::Calling::TranscriptCreateUtterance::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::CRM::Extensions::Calling::TranscriptCreateResponse
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
                transcript_id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::CRM::Extensions::Calling::TranscriptResponse
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
