# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class PublicAssociationDefinitionUpdateRequest < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUpdateRequest,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :association_type_id

            sig { returns(String) }
            attr_accessor :label

            sig { returns(T.nilable(String)) }
            attr_reader :inverse_label

            sig { params(inverse_label: String).void }
            attr_writer :inverse_label

            sig do
              params(
                association_type_id: Integer,
                label: String,
                inverse_label: String
              ).returns(T.attached_class)
            end
            def self.new(association_type_id:, label:, inverse_label: nil)
            end

            sig do
              override.returns(
                {
                  association_type_id: Integer,
                  label: String,
                  inverse_label: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
