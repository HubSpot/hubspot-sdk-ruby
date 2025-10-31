# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class PublicAssociationDefinitionCreateRequest < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionCreateRequest,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :label

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_reader :inverse_label

            sig { params(inverse_label: String).void }
            attr_writer :inverse_label

            sig do
              params(
                label: String,
                name: String,
                inverse_label: String
              ).returns(T.attached_class)
            end
            def self.new(label:, name:, inverse_label: nil)
            end

            sig do
              override.returns(
                { label: String, name: String, inverse_label: String }
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
