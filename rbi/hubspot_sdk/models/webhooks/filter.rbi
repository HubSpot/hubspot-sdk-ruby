# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class Filter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Webhooks::Filter, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[HubspotSDK::Webhooks::Condition]) }
        attr_accessor :conditions

        # Defines a single condition for searching CRM objects, specifying the property to
        # filter on, the operator to use (such as equals, greater than, or contains), and
        # the value(s) to compare against.
        sig do
          params(
            conditions: T::Array[HubspotSDK::Webhooks::Condition::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(conditions:)
        end

        sig do
          override.returns(
            { conditions: T::Array[HubspotSDK::Webhooks::Condition] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
