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

        sig { returns(Integer) }
        attr_accessor :limit

        sig { returns(Float) }
        attr_accessor :percentage

        sig { returns(Integer) }
        attr_accessor :usage

        sig do
          params(limit: Integer, percentage: Float, usage: Integer).returns(
            T.attached_class
          )
        end
        def self.new(limit:, percentage:, usage:)
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
