# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaBridgeListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubspotSDK::Cms::MediaBridgeListParams::MediaType::OrSymbol)
        end
        attr_accessor :media_type

        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            media_type:
              HubspotSDK::Cms::MediaBridgeListParams::MediaType::OrSymbol,
            after: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          media_type:,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              media_type:
                HubspotSDK::Cms::MediaBridgeListParams::MediaType::OrSymbol,
              after: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module MediaType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::MediaBridgeListParams::MediaType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :AUDIO,
              HubspotSDK::Cms::MediaBridgeListParams::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubspotSDK::Cms::MediaBridgeListParams::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubspotSDK::Cms::MediaBridgeListParams::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubspotSDK::Cms::MediaBridgeListParams::MediaType::TaggedSymbol
            )
          VIDEO =
            T.let(
              :VIDEO,
              HubspotSDK::Cms::MediaBridgeListParams::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::MediaBridgeListParams::MediaType::TaggedSymbol
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
