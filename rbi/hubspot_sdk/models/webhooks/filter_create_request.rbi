# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class FilterCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::FilterCreateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Defines a single condition for searching CRM objects, specifying the property to
        # filter on, the operator to use (such as equals, greater than, or contains), and
        # the value(s) to compare against.
        sig { returns(HubspotSDK::Webhooks::Filter) }
        attr_reader :filter

        sig { params(filter: HubspotSDK::Webhooks::Filter::OrHash).void }
        attr_writer :filter

        sig { returns(Integer) }
        attr_accessor :subscription_id

        sig do
          params(
            filter: HubspotSDK::Webhooks::Filter::OrHash,
            subscription_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines a single condition for searching CRM objects, specifying the property to
          # filter on, the operator to use (such as equals, greater than, or contains), and
          # the value(s) to compare against.
          filter:,
          subscription_id:
        )
        end

        sig do
          override.returns(
            { filter: HubspotSDK::Webhooks::Filter, subscription_id: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
