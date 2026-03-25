# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CustomObjectLimitResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CustomObjectLimitResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The maximum number of custom objects allowed.
        sig { returns(Integer) }
        attr_accessor :limit

        # The percentage of the custom object limit that is currently used.
        sig { returns(Float) }
        attr_accessor :percentage

        # The current number of custom objects used.
        sig { returns(Integer) }
        attr_accessor :usage

        sig do
          params(limit: Integer, percentage: Float, usage: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The maximum number of custom objects allowed.
          limit:,
          # The percentage of the custom object limit that is currently used.
          percentage:,
          # The current number of custom objects used.
          usage:
        )
        end

        sig do
          override.returns(
            { limit: Integer, percentage: Float, usage: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
