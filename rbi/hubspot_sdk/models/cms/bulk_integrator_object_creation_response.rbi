# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BulkIntegratorObjectCreationResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BulkIntegratorObjectCreationResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Hash[Symbol, HubSpotSDK::Cms::IntegratorObjectCreationResponse]
          )
        end
        attr_accessor :created_objects

        sig do
          params(
            created_objects:
              T::Hash[
                Symbol,
                HubSpotSDK::Cms::IntegratorObjectCreationResponse::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(created_objects:)
        end

        sig do
          override.returns(
            {
              created_objects:
                T::Hash[
                  Symbol,
                  HubSpotSDK::Cms::IntegratorObjectCreationResponse
                ]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
