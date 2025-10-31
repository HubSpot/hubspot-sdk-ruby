# typed: strong

module HubspotSDK
  module Models
    module CRM
      module ObjectLibrary
        class EnablementListResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::CRM::ObjectLibrary::EnablementListResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Hash[Symbol, T::Boolean]) }
          attr_accessor :enablement_by_object_type_id

          sig do
            params(
              enablement_by_object_type_id: T::Hash[Symbol, T::Boolean]
            ).returns(T.attached_class)
          end
          def self.new(enablement_by_object_type_id:)
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
