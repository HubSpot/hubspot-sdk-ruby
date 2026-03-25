# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Group < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Group, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :deleted

        sig { returns(String) }
        attr_accessor :display_name

        sig { returns(Integer) }
        attr_accessor :display_order

        sig { returns(Integer) }
        attr_accessor :fulcrum_portal_id

        sig { returns(Integer) }
        attr_accessor :fulcrum_timestamp

        sig { returns(T::Boolean) }
        attr_accessor :hubspot_defined

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig do
          params(
            deleted: T::Boolean,
            display_name: String,
            display_order: Integer,
            fulcrum_portal_id: Integer,
            fulcrum_timestamp: Integer,
            hubspot_defined: T::Boolean,
            name: String,
            portal_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          deleted:,
          display_name:,
          display_order:,
          fulcrum_portal_id:,
          fulcrum_timestamp:,
          hubspot_defined:,
          name:,
          portal_id:
        )
        end

        sig do
          override.returns(
            {
              deleted: T::Boolean,
              display_name: String,
              display_order: Integer,
              fulcrum_portal_id: Integer,
              fulcrum_timestamp: Integer,
              hubspot_defined: T::Boolean,
              name: String,
              portal_id: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
