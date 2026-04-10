# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module ObjectLibrary
        class ObjectTypeEnablementPublicResponse < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::ObjectLibrary::ObjectTypeEnablementPublicResponse,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # Whether the object type is enabled or not
          sig { returns(T::Boolean) }
          attr_accessor :enablement

          sig { params(enablement: T::Boolean).returns(T.attached_class) }
          def self.new(
            # Whether the object type is enabled or not
            enablement:
          )
          end

          sig { override.returns({ enablement: T::Boolean }) }
          def to_hash
          end
        end
      end
    end
  end
end
