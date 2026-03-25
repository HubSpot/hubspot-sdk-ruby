# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BulkIntegratorObjectCreationResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BulkIntegratorObjectCreationResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Hash[Symbol, HubspotSDK::Cms::IntegratorObjectCreationResponse]
          )
        end
        attr_accessor :created_objects

        sig do
          params(
            created_objects:
              T::Hash[
                Symbol,
                HubspotSDK::Cms::IntegratorObjectCreationResponse::OrHash
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
                  HubspotSDK::Cms::IntegratorObjectCreationResponse
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
