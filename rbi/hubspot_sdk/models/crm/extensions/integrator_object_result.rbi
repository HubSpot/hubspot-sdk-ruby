# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class IntegratorObjectResult < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::IntegratorObjectResult,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the card.
          sig { returns(String) }
          attr_accessor :id

          # A list of actions associated with the card, which can include action hooks,
          # confirmation action hooks, or iframes.
          sig do
            returns(
              T::Array[
                HubSpotSDK::Crm::Extensions::IntegratorObjectResult::Action::Variants
              ]
            )
          end
          attr_accessor :actions

          # The top-level title for this card. Displayed to users in the CRM UI.
          sig { returns(String) }
          attr_accessor :title

          # A collection of tokens representing specific properties related to the card.
          sig { returns(T::Array[HubSpotSDK::Crm::Extensions::ObjectToken]) }
          attr_accessor :tokens

          # A URL used on the title of the card
          sig { returns(T.nilable(String)) }
          attr_reader :link_url

          sig { params(link_url: String).void }
          attr_writer :link_url

          sig do
            params(
              id: String,
              actions:
                T::Array[
                  T.any(
                    HubSpotSDK::Crm::Extensions::ActionHookActionBody::OrHash,
                    HubSpotSDK::Crm::Extensions::IFrameActionBody::OrHash
                  )
                ],
              title: String,
              tokens:
                T::Array[HubSpotSDK::Crm::Extensions::ObjectToken::OrHash],
              link_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the card.
            id:,
            # A list of actions associated with the card, which can include action hooks,
            # confirmation action hooks, or iframes.
            actions:,
            # The top-level title for this card. Displayed to users in the CRM UI.
            title:,
            # A collection of tokens representing specific properties related to the card.
            tokens:,
            # A URL used on the title of the card
            link_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                actions:
                  T::Array[
                    HubSpotSDK::Crm::Extensions::IntegratorObjectResult::Action::Variants
                  ],
                title: String,
                tokens: T::Array[HubSpotSDK::Crm::Extensions::ObjectToken],
                link_url: String
              }
            )
          end
          def to_hash
          end

          module Action
            extend HubSpotSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  HubSpotSDK::Crm::Extensions::ActionHookActionBody,
                  HubSpotSDK::Crm::Extensions::IFrameActionBody
                )
              end

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::IntegratorObjectResult::Action::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
