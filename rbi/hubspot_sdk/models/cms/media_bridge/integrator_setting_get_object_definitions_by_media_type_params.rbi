# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class IntegratorSettingGetObjectDefinitionsByMediaTypeParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          # Include the full definition in the response.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_full_definition

          sig { params(include_full_definition: T::Boolean).void }
          attr_writer :include_full_definition

          sig do
            params(
              app_id: Integer,
              include_full_definition: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            app_id:,
            # Include the full definition in the response.
            include_full_definition: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                app_id: Integer,
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
                  HubspotSDK::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams::MediaType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VIDEO =
              T.let(
                :VIDEO,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams::MediaType::TaggedSymbol
              )
            AUDIO =
              T.let(
                :AUDIO,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams::MediaType::TaggedSymbol
              )
            DOCUMENT =
              T.let(
                :DOCUMENT,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams::MediaType::TaggedSymbol
              )
            OTHER =
              T.let(
                :OTHER,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams::MediaType::TaggedSymbol
              )
            IMAGE =
              T.let(
                :IMAGE,
                HubspotSDK::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams::MediaType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams::MediaType::TaggedSymbol
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
end
