# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class CollectionResponseAssociationSpecWithLabelNoPaging < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Associations::Schema::CollectionResponseAssociationSpecWithLabelNoPaging,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(T::Array[HubspotSDK::CRM::AssociationSpecWithLabel]) }
            attr_accessor :results

            sig do
              params(
                results:
                  T::Array[HubspotSDK::CRM::AssociationSpecWithLabel::OrHash]
              ).returns(T.attached_class)
            end
            def self.new(results:)
            end

            sig do
              override.returns(
                { results: T::Array[HubspotSDK::CRM::AssociationSpecWithLabel] }
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
