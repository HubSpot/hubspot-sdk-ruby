# typed: strong

module HubspotSDK
  module Models
    module CRM
      module ObjectLibrary
        class EnablementGetResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::CRM::ObjectLibrary::EnablementGetResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :enablement

          sig { params(enablement: T::Boolean).returns(T.attached_class) }
          def self.new(enablement:)
          end

          sig { override.returns({ enablement: T::Boolean }) }
          def to_hash
          end
        end
      end
    end
  end
end
