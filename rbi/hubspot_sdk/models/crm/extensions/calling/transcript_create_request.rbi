# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        module Calling
          class TranscriptCreateRequest < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Extensions::Calling::TranscriptCreateRequest,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :engagement_id

            sig do
              returns(
                T::Array[
                  HubspotSDK::CRM::Extensions::Calling::TranscriptCreateUtterance
                ]
              )
            end
            attr_accessor :transcript_create_utterances

            sig do
              params(
                engagement_id: Integer,
                transcript_create_utterances:
                  T::Array[
                    HubspotSDK::CRM::Extensions::Calling::TranscriptCreateUtterance::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(engagement_id:, transcript_create_utterances:)
            end

            sig do
              override.returns(
                {
                  engagement_id: Integer,
                  transcript_create_utterances:
                    T::Array[
                      HubspotSDK::CRM::Extensions::Calling::TranscriptCreateUtterance
                    ]
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
