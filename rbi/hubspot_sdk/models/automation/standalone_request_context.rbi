# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class StandaloneRequestContext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::StandaloneRequestContext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Automation::ChirpAIContextObject) }
        attr_reader :chirp_ai_context_object

        sig do
          params(
            chirp_ai_context_object:
              HubSpotSDK::Automation::ChirpAIContextObject::OrHash
          ).void
        end
        attr_writer :chirp_ai_context_object

        # Indicates the source of the request, with the default value being 'STANDALONE'.
        sig do
          returns(
            HubSpotSDK::Automation::StandaloneRequestContext::Source::OrSymbol
          )
        end
        attr_accessor :source

        # A unique identifier for tracking the trajectory of the request.
        sig { returns(T.nilable(String)) }
        attr_reader :trajectory_id

        sig { params(trajectory_id: String).void }
        attr_writer :trajectory_id

        sig do
          params(
            chirp_ai_context_object:
              HubSpotSDK::Automation::ChirpAIContextObject::OrHash,
            source:
              HubSpotSDK::Automation::StandaloneRequestContext::Source::OrSymbol,
            trajectory_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          chirp_ai_context_object:,
          # Indicates the source of the request, with the default value being 'STANDALONE'.
          source:,
          # A unique identifier for tracking the trajectory of the request.
          trajectory_id: nil
        )
        end

        sig do
          override.returns(
            {
              chirp_ai_context_object:
                HubSpotSDK::Automation::ChirpAIContextObject,
              source:
                HubSpotSDK::Automation::StandaloneRequestContext::Source::OrSymbol,
              trajectory_id: String
            }
          )
        end
        def to_hash
        end

        # Indicates the source of the request, with the default value being 'STANDALONE'.
        module Source
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Automation::StandaloneRequestContext::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDALONE =
            T.let(
              :STANDALONE,
              HubSpotSDK::Automation::StandaloneRequestContext::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::StandaloneRequestContext::Source::TaggedSymbol
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
