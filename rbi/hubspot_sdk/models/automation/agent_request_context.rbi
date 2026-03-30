# typed: strong

module HubspotSDK
  module Models
    module Automation
      class AgentRequestContext < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::AgentRequestContext,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the agent making the request.
        sig { returns(Integer) }
        attr_accessor :agent_id

        sig { returns(HubspotSDK::Automation::ChirpAIContextObject) }
        attr_reader :chirp_ai_context_object

        sig do
          params(
            chirp_ai_context_object:
              HubspotSDK::Automation::ChirpAIContextObject::OrHash
          ).void
        end
        attr_writer :chirp_ai_context_object

        # Indicates the source of the request, with the default value being 'AGENTS'.
        sig do
          returns(HubspotSDK::Automation::AgentRequestContext::Source::OrSymbol)
        end
        attr_accessor :source

        # The unique identifier for the trajectory associated with the agent request.
        sig { returns(T.nilable(String)) }
        attr_reader :trajectory_id

        sig { params(trajectory_id: String).void }
        attr_writer :trajectory_id

        sig do
          params(
            agent_id: Integer,
            chirp_ai_context_object:
              HubspotSDK::Automation::ChirpAIContextObject::OrHash,
            source:
              HubspotSDK::Automation::AgentRequestContext::Source::OrSymbol,
            trajectory_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the agent making the request.
          agent_id:,
          chirp_ai_context_object:,
          # Indicates the source of the request, with the default value being 'AGENTS'.
          source:,
          # The unique identifier for the trajectory associated with the agent request.
          trajectory_id: nil
        )
        end

        sig do
          override.returns(
            {
              agent_id: Integer,
              chirp_ai_context_object:
                HubspotSDK::Automation::ChirpAIContextObject,
              source:
                HubspotSDK::Automation::AgentRequestContext::Source::OrSymbol,
              trajectory_id: String
            }
          )
        end
        def to_hash
        end

        # Indicates the source of the request, with the default value being 'AGENTS'.
        module Source
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::AgentRequestContext::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AGENTS =
            T.let(
              :AGENTS,
              HubspotSDK::Automation::AgentRequestContext::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::AgentRequestContext::Source::TaggedSymbol
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
