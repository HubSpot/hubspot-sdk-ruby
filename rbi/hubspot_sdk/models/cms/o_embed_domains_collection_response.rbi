# typed: strong

module HubspotSDK
  module Models
    module Cms
      class OEmbedDomainsCollectionResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::OEmbedDomainsCollectionResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Cms::IntegratorOEmbedDomainModel]) }
        attr_accessor :results

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_count

        sig { params(total_count: Integer).void }
        attr_writer :total_count

        sig do
          params(
            results:
              T::Array[HubspotSDK::Cms::IntegratorOEmbedDomainModel::OrHash],
            total_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(results:, total_count: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Cms::IntegratorOEmbedDomainModel],
              total_count: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
