# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class FilterCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::FilterCreateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Defines a single condition for searching CRM objects, specifying the property to
        # filter on, the operator to use (such as equals, greater than, or contains), and
        # the value(s) to compare against.
        sig { returns(HubSpotSDK::Webhooks::Filter) }
        attr_reader :filter

        sig { params(filter: HubSpotSDK::Webhooks::Filter::OrHash).void }
        attr_writer :filter

        sig { returns(Integer) }
        attr_accessor :subscription_id

        sig do
          params(
            filter: HubSpotSDK::Webhooks::Filter::OrHash,
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
            { filter: HubSpotSDK::Webhooks::Filter, subscription_id: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
