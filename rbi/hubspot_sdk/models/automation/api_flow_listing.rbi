# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIFlowListing < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIFlowListing,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique ID for this flow. This is auto-generated when creating the flow.
        sig { returns(String) }
        attr_accessor :id

        # The timestamp this flow was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Deprecated. Will be removed.
        sig { returns(String) }
        attr_accessor :flow_type

        # This controls whether or not the flow is "enabled" if it's actively listening
        # for enrollment triggers and executing actions. If this is `false` the flow is
        # not accepting any enrollments or executing any actions.
        sig { returns(T::Boolean) }
        attr_accessor :is_enabled

        # The CRM object type for objects that can be enrolled into this flow.
        sig { returns(String) }
        attr_accessor :object_type_id

        # Deprecated. Will be removed.
        sig { returns(String) }
        attr_accessor :revision_id

        # The timestamp this flow was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The user-provided name for this flow. Names get auto-created for workflows that
        # are created without a name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # An optional unique key for this flow. This is only unique per-portal.
        sig { returns(T.nilable(String)) }
        attr_reader :uuid

        sig { params(uuid: String).void }
        attr_writer :uuid

        sig do
          params(
            id: String,
            created_at: Time,
            flow_type: String,
            is_enabled: T::Boolean,
            object_type_id: String,
            revision_id: String,
            updated_at: Time,
            name: String,
            uuid: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID for this flow. This is auto-generated when creating the flow.
          id:,
          # The timestamp this flow was created.
          created_at:,
          # Deprecated. Will be removed.
          flow_type:,
          # This controls whether or not the flow is "enabled" if it's actively listening
          # for enrollment triggers and executing actions. If this is `false` the flow is
          # not accepting any enrollments or executing any actions.
          is_enabled:,
          # The CRM object type for objects that can be enrolled into this flow.
          object_type_id:,
          # Deprecated. Will be removed.
          revision_id:,
          # The timestamp this flow was last updated.
          updated_at:,
          # The user-provided name for this flow. Names get auto-created for workflows that
          # are created without a name.
          name: nil,
          # An optional unique key for this flow. This is only unique per-portal.
          uuid: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              flow_type: String,
              is_enabled: T::Boolean,
              object_type_id: String,
              revision_id: String,
              updated_at: Time,
              name: String,
              uuid: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
