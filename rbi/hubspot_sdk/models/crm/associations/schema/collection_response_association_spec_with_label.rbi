# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          class CollectionResponseAssociationSpecWithLabel < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Associations::Schema::CollectionResponseAssociationSpecWithLabel,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(T::Array[HubspotSDK::Crm::AssociationSpecWithLabel]) }
            attr_accessor :results

            sig { returns(T.nilable(HubspotSDK::Paging)) }
            attr_reader :paging

            sig { params(paging: HubspotSDK::Paging::OrHash).void }
            attr_writer :paging

            sig do
              params(
                results:
                  T::Array[HubspotSDK::Crm::AssociationSpecWithLabel::OrHash],
                paging: HubspotSDK::Paging::OrHash
              ).returns(T.attached_class)
            end
            def self.new(results:, paging: nil)
            end

            sig do
              override.returns(
                {
                  results: T::Array[HubspotSDK::Crm::AssociationSpecWithLabel],
                  paging: HubspotSDK::Paging
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
