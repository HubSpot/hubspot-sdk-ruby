# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeListObjectTypesByMediaTypeParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :app_id

        sig do
          returns(
            HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::OrSymbol
          )
        end
        attr_accessor :media_type

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_full_definition

        sig { params(include_full_definition: T::Boolean).void }
        attr_writer :include_full_definition

        sig do
          params(
            app_id: String,
            media_type:
              HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::OrSymbol,
            include_full_definition: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          app_id:,
          media_type:,
          include_full_definition: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              app_id: String,
              media_type:
                HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::OrSymbol,
              include_full_definition: T::Boolean,
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
              T.all(
                Symbol,
                HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :AUDIO,
              HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
            )
          VIDEO =
            T.let(
              :VIDEO,
              HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
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
