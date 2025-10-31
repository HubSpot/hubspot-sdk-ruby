# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class PublicAssociationSpec < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationSpec,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :category

            sig { returns(Integer) }
            attr_accessor :type_id

            sig do
              params(category: String, type_id: Integer).returns(
                T.attached_class
              )
            end
            def self.new(category:, type_id:)
            end

            sig { override.returns({ category: String, type_id: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
