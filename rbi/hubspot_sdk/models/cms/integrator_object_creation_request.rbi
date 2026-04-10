# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class IntegratorObjectCreationRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::IntegratorObjectCreationRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType::OrSymbol
            ]
          )
        end
        attr_accessor :media_types

        sig do
          params(
            media_types:
              T::Array[
                HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType::OrSymbol
              ]
          ).returns(T.attached_class)
        end
        def self.new(media_types:)
        end

        sig do
          override.returns(
            {
              media_types:
                T::Array[
                  HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType::OrSymbol
                ]
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
                HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIDEO =
            T.let(
              :VIDEO,
              HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
            )
          AUDIO =
            T.let(
              :AUDIO,
              HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
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
