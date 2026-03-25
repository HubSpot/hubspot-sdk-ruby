# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaBridgeDeleteParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType::OrSymbol)
        end
        attr_accessor :media_type

        sig { returns(Integer) }
        attr_accessor :object_id_

        sig do
          params(
            media_type:
              HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType::OrSymbol,
            object_id_: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(media_type:, object_id_:, request_options: {})
        end

        sig do
          override.returns(
            {
              media_type:
                HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType::OrSymbol,
              object_id_: Integer,
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
              T.all(Symbol, HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :AUDIO,
              HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType::TaggedSymbol
            )
          VIDEO =
            T.let(
              :VIDEO,
              HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::MediaBridgeDeleteParams::MediaType::TaggedSymbol
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
