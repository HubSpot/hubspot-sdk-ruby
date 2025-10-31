# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PropertyGroup < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::CRM::PropertyGroup, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :archived

        # Property groups are displayed in order starting with the lowest positive integer
        # value. Values of -1 will cause the property group to be displayed after any
        # positive values.
        sig { returns(Integer) }
        attr_accessor :display_order

        # A human-readable label that will be shown in HubSpot.
        sig { returns(String) }
        attr_accessor :label

        # The internal property group name, which must be used when referencing the
        # property group via the API.
        sig { returns(String) }
        attr_accessor :name

        # An ID for a group of properties
        sig do
          params(
            archived: T::Boolean,
            display_order: Integer,
            label: String,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          archived:,
          # Property groups are displayed in order starting with the lowest positive integer
          # value. Values of -1 will cause the property group to be displayed after any
          # positive values.
          display_order:,
          # A human-readable label that will be shown in HubSpot.
          label:,
          # The internal property group name, which must be used when referencing the
          # property group via the API.
          name:
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              display_order: Integer,
              label: String,
              name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
