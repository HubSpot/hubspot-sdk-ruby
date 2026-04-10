# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListRemoveMembershipsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListRemoveMembershipsParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :list_id

        sig { returns(T::Array[String]) }
        attr_accessor :body

        sig do
          params(
            list_id: String,
            body: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(list_id:, body:, request_options: {})
        end

        sig do
          override.returns(
            {
              list_id: String,
              body: T::Array[String],
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
