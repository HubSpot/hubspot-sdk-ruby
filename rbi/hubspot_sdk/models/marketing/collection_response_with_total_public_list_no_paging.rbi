# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalPublicListNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CollectionResponseWithTotalPublicListNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Marketing::PublicList]) }
        attr_accessor :results

        sig { returns(Integer) }
        attr_accessor :total

        sig do
          params(
            results: T::Array[HubspotSDK::Marketing::PublicList::OrHash],
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(results:, total:)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Marketing::PublicList],
              total: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
