# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module ObjectLibrary
        class PortalObjectTypeEnablementPublicResponse < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::ObjectLibrary::PortalObjectTypeEnablementPublicResponse,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # A map of objectTypeId to whether that object type is enabled or not
          sig { returns(T::Hash[Symbol, T::Boolean]) }
          attr_accessor :enablement_by_object_type_id

          sig do
            params(
              enablement_by_object_type_id: T::Hash[Symbol, T::Boolean]
            ).returns(T.attached_class)
          end
          def self.new(
            # A map of objectTypeId to whether that object type is enabled or not
            enablement_by_object_type_id:
          )
          end

          sig do
            override.returns(
              { enablement_by_object_type_id: T::Hash[Symbol, T::Boolean] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
