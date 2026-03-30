# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicActionRevision < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicActionRevision,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the action revision.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the action revision was created.
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(HubspotSDK::Automation::PublicActionDefinition) }
        attr_reader :definition

        sig do
          params(
            definition: HubspotSDK::Automation::PublicActionDefinition::OrHash
          ).void
        end
        attr_writer :definition

        # The unique identifier for the specific revision of the action.
        sig { returns(String) }
        attr_accessor :revision_id

        sig do
          params(
            id: String,
            created_at: Time,
            definition: HubspotSDK::Automation::PublicActionDefinition::OrHash,
            revision_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the action revision.
          id:,
          # The date and time when the action revision was created.
          created_at:,
          definition:,
          # The unique identifier for the specific revision of the action.
          revision_id:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              definition: HubspotSDK::Automation::PublicActionDefinition,
              revision_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
