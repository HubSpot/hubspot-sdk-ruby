# typed: strong

module HubspotSDK
  module Models
    module CRM
      class CollectionResponseSimplePublicObjectWithAssociations < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::CollectionResponseSimplePublicObjectWithAssociations,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::CRM::SimplePublicObjectWithAssociations])
        end
        attr_accessor :results

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::CRM::SimplePublicObjectWithAssociations::OrHash
              ],
            paging: HubspotSDK::Marketing::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          # Contains information pagination of results.
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubspotSDK::CRM::SimplePublicObjectWithAssociations],
              paging: HubspotSDK::Marketing::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
