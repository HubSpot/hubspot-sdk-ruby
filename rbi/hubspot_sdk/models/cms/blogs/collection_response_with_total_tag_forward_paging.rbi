# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalTagForwardPaging < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::CollectionResponseWithTotalTagForwardPaging,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # Collection of blog tags.
          sig { returns(T::Array[HubSpotSDK::Cms::Blogs::Tag]) }
          attr_accessor :results

          # Total number of blog tags.
          sig { returns(Integer) }
          attr_accessor :total

          sig { returns(T.nilable(HubSpotSDK::ForwardPaging)) }
          attr_reader :paging

          sig { params(paging: HubSpotSDK::ForwardPaging::OrHash).void }
          attr_writer :paging

          sig do
            params(
              results: T::Array[HubSpotSDK::Cms::Blogs::Tag::OrHash],
              total: Integer,
              paging: HubSpotSDK::ForwardPaging::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Collection of blog tags.
            results:,
            # Total number of blog tags.
            total:,
            paging: nil
          )
          end

          sig do
            override.returns(
              {
                results: T::Array[HubSpotSDK::Cms::Blogs::Tag],
                total: Integer,
                paging: HubSpotSDK::ForwardPaging
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
