# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class IFrameActionBody < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::IFrameActionBody,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The height of the iframe in pixels.
          sig { returns(Integer) }
          attr_accessor :height

          # A list of property names that will be included on the url of the iframe.
          sig { returns(T::Array[String]) }
          attr_accessor :property_names_included

          # The type of status.
          sig do
            returns(
              HubspotSDK::Crm::Extensions::IFrameActionBody::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # The URL endpoint that will be loaded in the iframe when triggered.
          sig { returns(String) }
          attr_accessor :url

          # The width of the iframe in pixels.
          sig { returns(Integer) }
          attr_accessor :width

          # The label for this property as you'd like it displayed to users.
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          sig do
            params(
              height: Integer,
              property_names_included: T::Array[String],
              type:
                HubspotSDK::Crm::Extensions::IFrameActionBody::Type::OrSymbol,
              url: String,
              width: Integer,
              label: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The height of the iframe in pixels.
            height:,
            # A list of property names that will be included on the url of the iframe.
            property_names_included:,
            # The type of status.
            type:,
            # The URL endpoint that will be loaded in the iframe when triggered.
            url:,
            # The width of the iframe in pixels.
            width:,
            # The label for this property as you'd like it displayed to users.
            label: nil
          )
          end

          sig do
            override.returns(
              {
                height: Integer,
                property_names_included: T::Array[String],
                type:
                  HubspotSDK::Crm::Extensions::IFrameActionBody::Type::TaggedSymbol,
                url: String,
                width: Integer,
                label: String
              }
            )
          end
          def to_hash
          end

          # The type of status.
          module Type
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::IFrameActionBody::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IFRAME =
              T.let(
                :IFRAME,
                HubspotSDK::Crm::Extensions::IFrameActionBody::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::IFrameActionBody::Type::TaggedSymbol
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
