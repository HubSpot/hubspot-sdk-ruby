# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class FilterResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::FilterResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :created_at

        # Defines a single condition for searching CRM objects, specifying the property to
        # filter on, the operator to use (such as equals, greater than, or contains), and
        # the value(s) to compare against.
        sig { returns(HubspotSDK::Webhooks::Filter) }
        attr_reader :filter

        sig { params(filter: HubspotSDK::Webhooks::Filter::OrHash).void }
        attr_writer :filter

        sig do
          params(
            id: Integer,
            created_at: Integer,
            filter: HubspotSDK::Webhooks::Filter::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          # Defines a single condition for searching CRM objects, specifying the property to
          # filter on, the operator to use (such as equals, greater than, or contains), and
          # the value(s) to compare against.
          filter:
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              created_at: Integer,
              filter: HubspotSDK::Webhooks::Filter
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
