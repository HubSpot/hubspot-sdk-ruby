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

          sig { returns(Integer) }
          attr_accessor :height

          sig { returns(T::Array[String]) }
          attr_accessor :property_names_included

          sig do
            returns(
              HubspotSDK::Crm::Extensions::IFrameActionBody::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig { returns(String) }
          attr_accessor :url

          sig { returns(Integer) }
          attr_accessor :width

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
            height:,
            property_names_included:,
            type:,
            url:,
            width:,
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
