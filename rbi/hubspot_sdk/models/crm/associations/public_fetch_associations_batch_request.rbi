# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        class PublicFetchAssociationsBatchRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Associations::PublicFetchAssociationsBatchRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          sig { params(id: String, after: String).returns(T.attached_class) }
          def self.new(id:, after: nil)
          end

          sig { override.returns({ id: String, after: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
