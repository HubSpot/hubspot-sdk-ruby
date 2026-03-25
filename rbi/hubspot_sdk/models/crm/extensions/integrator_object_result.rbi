# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class IntegratorObjectResult < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::IntegratorObjectResult,
                HubspotSDK::Internal::AnyHash
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
                HubspotSDK::Crm::Extensions::IntegratorObjectResult::Action::Variants
              ]
            )
          end
          attr_accessor :actions

          # The title of the object card, displayed to users.
          sig { returns(String) }
          attr_accessor :title

          # A collection of tokens representing specific properties related to the card.
          sig { returns(T::Array[HubspotSDK::Crm::Extensions::ObjectToken]) }
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
                    HubspotSDK::Crm::Extensions::ActionHookActionBody::OrHash,
                    HubspotSDK::Crm::Extensions::IFrameActionBody::OrHash
                  )
                ],
              title: String,
              tokens:
                T::Array[HubspotSDK::Crm::Extensions::ObjectToken::OrHash],
              link_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the card.
            id:,
            # A list of actions associated with the card, which can include action hooks,
            # confirmation action hooks, or iframes.
            actions:,
            # The title of the object card, displayed to users.
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
                    HubspotSDK::Crm::Extensions::IntegratorObjectResult::Action::Variants
                  ],
                title: String,
                tokens: T::Array[HubspotSDK::Crm::Extensions::ObjectToken],
                link_url: String
              }
            )
          end
          def to_hash
          end

          module Action
            extend HubspotSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Extensions::ActionHookActionBody,
                  HubspotSDK::Crm::Extensions::IFrameActionBody
                )
              end

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::IntegratorObjectResult::Action::Variants
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
