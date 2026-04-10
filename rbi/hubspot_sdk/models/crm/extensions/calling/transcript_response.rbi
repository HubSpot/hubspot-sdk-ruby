# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          class TranscriptResponse < HubSpotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse,
                  HubSpotSDK::Internal::AnyHash
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
                HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse::TranscriptSource::TaggedSymbol
              )
            end
            attr_accessor :transcript_source

            sig do
              returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::Calling::TranscriptUtterance
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
                  HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse::TranscriptSource::OrSymbol,
                transcript_utterances:
                  T::Array[
                    HubSpotSDK::Crm::Extensions::Calling::TranscriptUtterance::OrHash
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
                    HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse::TranscriptSource::TaggedSymbol,
                  transcript_utterances:
                    T::Array[
                      HubSpotSDK::Crm::Extensions::Calling::TranscriptUtterance
                    ],
                  updated_at: Time
                }
              )
            end
            def to_hash
            end

            module TranscriptSource
              extend HubSpotSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse::TranscriptSource
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              HUBSPOT_GENERATED =
                T.let(
                  :HUBSPOT_GENERATED,
                  HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse::TranscriptSource::TaggedSymbol
                )
              INTEGRATOR_GENERATED =
                T.let(
                  :INTEGRATOR_GENERATED,
                  HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse::TranscriptSource::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse::TranscriptSource::TaggedSymbol
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
