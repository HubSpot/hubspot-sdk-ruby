# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicCommentEgg < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicCommentEgg,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              T.any(
                HubspotSDK::Conversations::PublicFileEgg,
                HubspotSDK::Conversations::PublicQuickRepliesEgg,
                HubspotSDK::Conversations::PublicSocialMediaEgg
              )
            ]
          )
        end
        attr_accessor :attachments

        sig { returns(String) }
        attr_accessor :text

        sig do
          returns(HubspotSDK::Conversations::PublicCommentEgg::Type::OrSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :rich_text

        sig { params(rich_text: String).void }
        attr_writer :rich_text

        sig do
          params(
            attachments:
              T::Array[
                T.any(
                  HubspotSDK::Conversations::PublicFileEgg::OrHash,
                  HubspotSDK::Conversations::PublicQuickRepliesEgg::OrHash,
                  HubspotSDK::Conversations::PublicSocialMediaEgg::OrHash
                )
              ],
            text: String,
            type: HubspotSDK::Conversations::PublicCommentEgg::Type::OrSymbol,
            rich_text: String
          ).returns(T.attached_class)
        end
        def self.new(attachments:, text:, type:, rich_text: nil)
        end

        sig do
          override.returns(
            {
              attachments:
                T::Array[
                  T.any(
                    HubspotSDK::Conversations::PublicFileEgg,
                    HubspotSDK::Conversations::PublicQuickRepliesEgg,
                    HubspotSDK::Conversations::PublicSocialMediaEgg
                  )
                ],
              text: String,
              type: HubspotSDK::Conversations::PublicCommentEgg::Type::OrSymbol,
              rich_text: String
            }
          )
        end
        def to_hash
        end

        module Attachment
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Conversations::PublicFileEgg,
                HubspotSDK::Conversations::PublicQuickRepliesEgg,
                HubspotSDK::Conversations::PublicSocialMediaEgg
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicCommentEgg::Attachment::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::PublicCommentEgg::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMENT =
            T.let(
              :COMMENT,
              HubspotSDK::Conversations::PublicCommentEgg::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicCommentEgg::Type::TaggedSymbol
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
