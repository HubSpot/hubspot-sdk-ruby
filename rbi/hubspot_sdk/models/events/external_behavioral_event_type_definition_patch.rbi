# typed: strong

module HubSpotSDK
  module Models
    module Events
      class ExternalBehavioralEventTypeDefinitionPatch < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinitionPatch,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A description of the event that will be shown as help text in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Human readable label for the event. Used in HubSpot UI
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig do
          params(description: String, label: String).returns(T.attached_class)
        end
        def self.new(
          # A description of the event that will be shown as help text in HubSpot.
          description: nil,
          # Human readable label for the event. Used in HubSpot UI
          label: nil
        )
        end

        sig { override.returns({ description: String, label: String }) }
        def to_hash
        end
      end
    end
  end
end
