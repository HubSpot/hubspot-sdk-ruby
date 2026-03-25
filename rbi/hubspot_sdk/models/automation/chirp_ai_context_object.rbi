# typed: strong

module HubspotSDK
  module Models
    module Automation
      class ChirpAIContextObject < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::ChirpAIContextObject,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :application_group

        sig { returns(String) }
        attr_accessor :application_id

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :otel_context_holder

        sig do
          returns(
            T::Array[
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::OrSymbol
            ]
          )
        end
        attr_accessor :unstructured_sources

        sig { returns(T.nilable(HubspotSDK::Automation::ComplianceIDs)) }
        attr_reader :compliance_ids

        sig do
          params(
            compliance_ids: HubspotSDK::Automation::ComplianceIDs::OrHash
          ).void
        end
        attr_writer :compliance_ids

        sig { returns(T.nilable(String)) }
        attr_reader :feature_id

        sig { params(feature_id: String).void }
        attr_writer :feature_id

        sig { returns(T.nilable(String)) }
        attr_reader :inference_id

        sig { params(inference_id: String).void }
        attr_writer :inference_id

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
                HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::OrSymbol
              ],
            compliance_ids: HubspotSDK::Automation::ComplianceIDs::OrHash,
            feature_id: String,
            inference_id: String,
            trajectory_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          application_group:,
          application_id:,
          metadata:,
          otel_context_holder:,
          unstructured_sources:,
          compliance_ids: nil,
          feature_id: nil,
          inference_id: nil,
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
                  HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::OrSymbol
                ],
              compliance_ids: HubspotSDK::Automation::ComplianceIDs,
              feature_id: String,
              inference_id: String,
              trajectory_id: String
            }
          )
        end
        def to_hash
        end

        module UnstructuredSource
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          USER_INPUT =
            T.let(
              :USER_INPUT,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          LOGGED_EMAIL =
            T.let(
              :LOGGED_EMAIL,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          VIDEO_CALL =
            T.let(
              :VIDEO_CALL,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          AUDIO_CALL =
            T.let(
              :AUDIO_CALL,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          CALL_TRANSCRIPT =
            T.let(
              :CALL_TRANSCRIPT,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          MEETING_TRANSCRIPT =
            T.let(
              :MEETING_TRANSCRIPT,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          FORMS =
            T.let(
              :FORMS,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          FEEDBACK_SURVEY =
            T.let(
              :FEEDBACK_SURVEY,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          PDF =
            T.let(
              :PDF,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          OTHER_ATTACHMENT_DOC =
            T.let(
              :OTHER_ATTACHMENT_DOC,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          WHATSAPP =
            T.let(
              :WHATSAPP,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          SMS =
            T.let(
              :SMS,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          CHAT =
            T.let(
              :CHAT,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          FACEBOOK_MESSENGER =
            T.let(
              :FACEBOOK_MESSENGER,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          CUSTOM_CHANNEL_OR_API =
            T.let(
              :CUSTOM_CHANNEL_OR_API,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          MANY =
            T.let(
              :MANY,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          NOTE =
            T.let(
              :NOTE,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )
          DERIVED =
            T.let(
              :DERIVED,
              HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource::TaggedSymbol
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
