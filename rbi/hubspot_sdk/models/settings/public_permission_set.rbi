# typed: strong

module HubspotSDK
  module Models
    module Settings
      class PublicPermissionSet < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::PublicPermissionSet,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The role's unique ID
        sig { returns(String) }
        attr_accessor :id

        # The role's name
        sig { returns(String) }
        attr_accessor :name

        # Whether this role has a paid seat and requires the billing-write scope to
        # assign/unassign to users
        sig { returns(T::Boolean) }
        attr_accessor :requires_billing_write

        sig do
          params(
            id: String,
            name: String,
            requires_billing_write: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The role's unique ID
          id:,
          # The role's name
          name:,
          # Whether this role has a paid seat and requires the billing-write scope to
          # assign/unassign to users
          requires_billing_write:
        )
        end

        sig do
          override.returns(
            { id: String, name: String, requires_billing_write: T::Boolean }
          )
        end
        def to_hash
        end
      end
    end
  end
end
