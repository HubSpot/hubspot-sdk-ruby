# typed: strong

module HubspotSDK
  module Models
    module Cms
      class IntegratorObjectCreationRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::IntegratorObjectCreationRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType::OrSymbol
            ]
          )
        end
        attr_accessor :media_types

        sig do
          params(
            media_types:
              T::Array[
                HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType::OrSymbol
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
                  HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType::OrSymbol
                ]
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
                HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIDEO =
            T.let(
              :VIDEO,
              HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
            )
          AUDIO =
            T.let(
              :AUDIO,
              HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType::TaggedSymbol
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
