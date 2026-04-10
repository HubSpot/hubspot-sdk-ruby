# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class MediaBridgeListObjectTypesByMediaTypeParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig do
          returns(
            HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::OrSymbol
          )
        end
        attr_accessor :media_type

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_full_definition

        sig { params(include_full_definition: T::Boolean).void }
        attr_writer :include_full_definition

        sig do
          params(
            app_id: Integer,
            media_type:
              HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::OrSymbol,
            include_full_definition: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
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
              app_id: Integer,
              media_type:
                HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::OrSymbol,
              include_full_definition: T::Boolean,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module MediaType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :AUDIO,
              HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
            )
          VIDEO =
            T.let(
              :VIDEO,
              HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::TaggedSymbol
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
