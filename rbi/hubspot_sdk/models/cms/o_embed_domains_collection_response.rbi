# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class OEmbedDomainsCollectionResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::OEmbedDomainsCollectionResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Cms::IntegratorOEmbedDomainModel]) }
        attr_accessor :results

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_count

        sig { params(total_count: Integer).void }
        attr_writer :total_count

        sig do
          params(
            results:
              T::Array[HubSpotSDK::Cms::IntegratorOEmbedDomainModel::OrHash],
            total_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(results:, total_count: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Cms::IntegratorOEmbedDomainModel],
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
