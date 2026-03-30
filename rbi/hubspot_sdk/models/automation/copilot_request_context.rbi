# typed: strong

module HubspotSDK
  module Models
    module Automation
      class CopilotRequestContext < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::CopilotRequestContext,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates the source of the request, with the default value being 'COPILOT'.
        sig do
          returns(
            HubspotSDK::Automation::CopilotRequestContext::Source::OrSymbol
          )
        end
        attr_accessor :source

        # The unique identifier for the trajectory.
        sig { returns(T.nilable(String)) }
        attr_reader :trajectory_id

        sig { params(trajectory_id: String).void }
        attr_writer :trajectory_id

        sig do
          params(
            source:
              HubspotSDK::Automation::CopilotRequestContext::Source::OrSymbol,
            trajectory_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the source of the request, with the default value being 'COPILOT'.
          source:,
          # The unique identifier for the trajectory.
          trajectory_id: nil
        )
        end

        sig do
          override.returns(
            {
              source:
                HubspotSDK::Automation::CopilotRequestContext::Source::OrSymbol,
              trajectory_id: String
            }
          )
        end
        def to_hash
        end

        # Indicates the source of the request, with the default value being 'COPILOT'.
        module Source
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::CopilotRequestContext::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COPILOT =
            T.let(
              :COPILOT,
              HubspotSDK::Automation::CopilotRequestContext::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::CopilotRequestContext::Source::TaggedSymbol
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
