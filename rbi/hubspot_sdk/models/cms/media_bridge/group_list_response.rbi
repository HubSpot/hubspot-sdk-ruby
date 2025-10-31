# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class GroupListResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::Cms::MediaBridge::GroupListResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[HubspotSDK::CRM::PropertyGroup]) }
          attr_accessor :results

          sig do
            params(
              results: T::Array[HubspotSDK::CRM::PropertyGroup::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(results:)
          end

          sig do
            override.returns(
              { results: T::Array[HubspotSDK::CRM::PropertyGroup] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
