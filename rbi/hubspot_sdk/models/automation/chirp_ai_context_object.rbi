# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class ChirpAIContextObject < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::ChirpAIContextObject,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The group to which the application belongs.
        sig { returns(String) }
        attr_accessor :application_group

        # The identifier for the application associated with the context.
        sig { returns(String) }
        attr_accessor :application_id

        # Additional metadata related to the context, represented as key-value pairs.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # Holds OpenTelemetry context information as key-value pairs.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :otel_context_holder

        sig do
          returns(
            T::Array[
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::OrSymbol
            ]
          )
        end
        attr_accessor :unstructured_sources

        sig { returns(T.nilable(HubSpotSDK::Automation::ComplianceIDs)) }
        attr_reader :compliance_ids

        sig do
          params(
            compliance_ids: HubSpotSDK::Automation::ComplianceIDs::OrHash
          ).void
        end
        attr_writer :compliance_ids

        sig { returns(T.nilable(String)) }
        attr_reader :conversation_id

        sig { params(conversation_id: String).void }
        attr_writer :conversation_id

        # The identifier for the feature associated with the context.
        sig { returns(T.nilable(String)) }
        attr_reader :feature_id

        sig { params(feature_id: String).void }
        attr_writer :feature_id

        # The identifier for the inference associated with the context.
        sig { returns(T.nilable(String)) }
        attr_reader :inference_id

        sig { params(inference_id: String).void }
        attr_writer :inference_id

        # The identifier for the trajectory, formatted as a UUID.
        sig { returns(T.nilable(String)) }
        attr_reader :trajectory_id

        sig { params(trajectory_id: String).void }
        attr_writer :trajectory_id

        sig do
          params(
            application_group: String,
            application_id: String,
            metadata: T::Hash[Symbol, String],
            otel_context_holder: T::Hash[Symbol, String],
            unstructured_sources:
              T::Array[
                HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::OrSymbol
              ],
            compliance_ids: HubSpotSDK::Automation::ComplianceIDs::OrHash,
            conversation_id: String,
            feature_id: String,
            inference_id: String,
            trajectory_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The group to which the application belongs.
          application_group:,
          # The identifier for the application associated with the context.
          application_id:,
          # Additional metadata related to the context, represented as key-value pairs.
          metadata:,
          # Holds OpenTelemetry context information as key-value pairs.
          otel_context_holder:,
          unstructured_sources:,
          compliance_ids: nil,
          conversation_id: nil,
          # The identifier for the feature associated with the context.
          feature_id: nil,
          # The identifier for the inference associated with the context.
          inference_id: nil,
          # The identifier for the trajectory, formatted as a UUID.
          trajectory_id: nil
        )
        end

        sig do
          override.returns(
            {
              application_group: String,
              application_id: String,
              metadata: T::Hash[Symbol, String],
              otel_context_holder: T::Hash[Symbol, String],
              unstructured_sources:
                T::Array[
                  HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::OrSymbol
                ],
              compliance_ids: HubSpotSDK::Automation::ComplianceIDs,
              conversation_id: String,
              feature_id: String,
              inference_id: String,
              trajectory_id: String
            }
          )
        end
        def to_hash
        end

        module UnstructuredSource
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          USER_INPUT =
            T.let(
              :USER_INPUT,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          LOGGED_EMAIL =
            T.let(
              :LOGGED_EMAIL,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          VIDEO_CALL =
            T.let(
              :VIDEO_CALL,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          AUDIO_CALL =
            T.let(
              :AUDIO_CALL,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          CALL_TRANSCRIPT =
            T.let(
              :CALL_TRANSCRIPT,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          MEETING_TRANSCRIPT =
            T.let(
              :MEETING_TRANSCRIPT,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          FORMS =
            T.let(
              :FORMS,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          FEEDBACK_SURVEY =
            T.let(
              :FEEDBACK_SURVEY,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          PDF =
            T.let(
              :PDF,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          OTHER_ATTACHMENT_DOC =
            T.let(
              :OTHER_ATTACHMENT_DOC,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          WHATSAPP =
            T.let(
              :WHATSAPP,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          SMS =
            T.let(
              :SMS,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          CHAT =
            T.let(
              :CHAT,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          FACEBOOK_MESSENGER =
            T.let(
              :FACEBOOK_MESSENGER,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          CUSTOM_CHANNEL_OR_API =
            T.let(
              :CUSTOM_CHANNEL_OR_API,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          MANY =
            T.let(
              :MANY,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          NOTE =
            T.let(
              :NOTE,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          DERIVED =
            T.let(
              :DERIVED,
              HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
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
