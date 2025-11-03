# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        class PublicAssociationMultiWithLabel < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Associations::PublicAssociationMultiWithLabel,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(HubspotSDK::PublicObjectID) }
          attr_reader :from

          sig { params(from: HubspotSDK::PublicObjectID::OrHash).void }
          attr_writer :from

          sig do
            returns(T::Array[HubspotSDK::Crm::MultiAssociatedObjectWithLabel])
          end
          attr_accessor :to

          # Contains information pagination of results.
          sig { returns(T.nilable(HubspotSDK::Marketing::EmailsPaging)) }
          attr_reader :paging

          sig do
            params(paging: HubspotSDK::Marketing::EmailsPaging::OrHash).void
          end
          attr_writer :paging

          sig do
            params(
              from: HubspotSDK::PublicObjectID::OrHash,
              to:
                T::Array[
                  HubspotSDK::Crm::MultiAssociatedObjectWithLabel::OrHash
                ],
              paging: HubspotSDK::Marketing::EmailsPaging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            from:,
            to:,
            # Contains information pagination of results.
            paging: nil
          )
          end

          sig do
            override.returns(
              {
                from: HubspotSDK::PublicObjectID,
                to: T::Array[HubspotSDK::Crm::MultiAssociatedObjectWithLabel],
                paging: HubspotSDK::Marketing::EmailsPaging
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
