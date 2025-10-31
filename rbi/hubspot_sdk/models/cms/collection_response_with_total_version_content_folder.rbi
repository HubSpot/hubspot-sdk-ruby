# typed: strong

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalVersionContentFolder < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::CollectionResponseWithTotalVersionContentFolder,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Collection of content folder versions.
        sig { returns(T::Array[HubspotSDK::Cms::VersionContentFolder]) }
        attr_accessor :results

        # Total number of content folder versions.
        sig { returns(Integer) }
        attr_accessor :total

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::Paging::OrHash).void }
        attr_writer :paging

        # Response object for collections of content folder versions with pagination
        # information.
        sig do
          params(
            results: T::Array[HubspotSDK::Cms::VersionContentFolder::OrHash],
            total: Integer,
            paging: HubspotSDK::Marketing::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Collection of content folder versions.
          results:,
          # Total number of content folder versions.
          total:,
          # Contains information pagination of results.
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Cms::VersionContentFolder],
              total: Integer,
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
