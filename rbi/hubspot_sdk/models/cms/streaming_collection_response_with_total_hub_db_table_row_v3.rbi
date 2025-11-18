# typed: strong

module HubspotSDK
  module Models
    module Cms
      class StreamingCollectionResponseWithTotalHubDBTableRowV3 < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[T.anything]) }
        attr_accessor :results

        sig { returns(Integer) }
        attr_accessor :total

        sig do
          returns(
            HubspotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(HubspotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[T.anything],
            total: Integer,
            type:
              HubspotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type::OrSymbol,
            paging: HubspotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, total:, type:, paging: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[T.anything],
              total: Integer,
              type:
                HubspotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type::TaggedSymbol,
              paging: HubspotSDK::Paging
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STREAMING =
            T.let(
              :STREAMING,
              HubspotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
