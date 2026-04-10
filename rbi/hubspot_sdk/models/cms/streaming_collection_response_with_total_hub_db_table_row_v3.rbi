# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class StreamingCollectionResponseWithTotalHubDBTableRowV3 < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[T.anything]) }
        attr_accessor :results

        # The total number of rows available in the collection.
        sig { returns(Integer) }
        attr_accessor :total

        # Indicates the type of response, which is 'STREAMING' by default.
        sig do
          returns(
            HubSpotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[T.anything],
            total: Integer,
            type:
              HubSpotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type::OrSymbol,
            paging: HubSpotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          # The total number of rows available in the collection.
          total:,
          # Indicates the type of response, which is 'STREAMING' by default.
          type:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[T.anything],
              total: Integer,
              type:
                HubSpotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type::TaggedSymbol,
              paging: HubSpotSDK::Paging
            }
          )
        end
        def to_hash
        end

        # Indicates the type of response, which is 'STREAMING' by default.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STREAMING =
            T.let(
              :STREAMING,
              HubSpotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type::TaggedSymbol
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
