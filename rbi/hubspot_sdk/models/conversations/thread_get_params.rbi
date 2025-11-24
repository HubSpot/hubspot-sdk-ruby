# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ThreadGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ThreadGetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig do
          returns(
            T.nilable(
              T::Array[
                HubspotSDK::Conversations::ThreadGetParams::Association::OrSymbol
              ]
            )
          )
        end
        attr_reader :association

        sig do
          params(
            association:
              T::Array[
                HubspotSDK::Conversations::ThreadGetParams::Association::OrSymbol
              ]
          ).void
        end
        attr_writer :association

        sig { returns(T.nilable(String)) }
        attr_reader :property

        sig { params(property: String).void }
        attr_writer :property

        sig do
          params(
            archived: T::Boolean,
            association:
              T::Array[
                HubspotSDK::Conversations::ThreadGetParams::Association::OrSymbol
              ],
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          archived: nil,
          association: nil,
          property: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              association:
                T::Array[
                  HubspotSDK::Conversations::ThreadGetParams::Association::OrSymbol
                ],
              property: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Association
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::ThreadGetParams::Association
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TICKET =
            T.let(
              :TICKET,
              HubspotSDK::Conversations::ThreadGetParams::Association::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ThreadGetParams::Association::TaggedSymbol
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
