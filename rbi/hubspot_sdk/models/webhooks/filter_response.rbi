# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class FilterResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::FilterResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :created_at

        # Defines a single condition for searching CRM objects, specifying the property to
        # filter on, the operator to use (such as equals, greater than, or contains), and
        # the value(s) to compare against.
        sig { returns(HubSpotSDK::Webhooks::Filter) }
        attr_reader :filter

        sig { params(filter: HubSpotSDK::Webhooks::Filter::OrHash).void }
        attr_writer :filter

        sig do
          params(
            id: Integer,
            created_at: Integer,
            filter: HubSpotSDK::Webhooks::Filter::OrHash
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
              filter: HubSpotSDK::Webhooks::Filter
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
