# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        module Calling
          class TranscriptResponse < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Extensions::Calling::TranscriptResponse,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(Integer) }
            attr_accessor :engagement_id

            sig do
              returns(
                HubspotSDK::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource::TaggedSymbol
              )
            end
            attr_accessor :transcript_source

            sig do
              returns(
                T::Array[
                  HubspotSDK::CRM::Extensions::Calling::TranscriptUtterance
                ]
              )
            end
            attr_accessor :transcript_utterances

            sig { returns(Time) }
            attr_accessor :updated_at

            sig do
              params(
                id: String,
                created_at: Time,
                engagement_id: Integer,
                transcript_source:
                  HubspotSDK::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource::OrSymbol,
                transcript_utterances:
                  T::Array[
                    HubspotSDK::CRM::Extensions::Calling::TranscriptUtterance::OrHash
                  ],
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              created_at:,
              engagement_id:,
              transcript_source:,
              transcript_utterances:,
              updated_at:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Time,
                  engagement_id: Integer,
                  transcript_source:
                    HubspotSDK::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource::TaggedSymbol,
                  transcript_utterances:
                    T::Array[
                      HubspotSDK::CRM::Extensions::Calling::TranscriptUtterance
                    ],
                  updated_at: Time
                }
              )
            end
            def to_hash
            end

            module TranscriptSource
              extend HubspotSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    HubspotSDK::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              HUBSPOT_GENERATED =
                T.let(
                  :HUBSPOT_GENERATED,
                  HubspotSDK::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource::TaggedSymbol
                )
              INTEGRATOR_GENERATED =
                T.let(
                  :INTEGRATOR_GENERATED,
                  HubspotSDK::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource::TaggedSymbol
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
end
