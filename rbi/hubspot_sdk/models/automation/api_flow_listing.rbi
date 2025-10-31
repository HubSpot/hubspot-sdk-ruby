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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :flow_type

        sig { returns(T::Boolean) }
        attr_accessor :is_enabled

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :revision_id

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

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
          id:,
          created_at:,
          flow_type:,
          is_enabled:,
          object_type_id:,
          revision_id:,
          updated_at:,
          name: nil,
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
