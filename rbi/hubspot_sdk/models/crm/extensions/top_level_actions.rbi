# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class TopLevelActions < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::TopLevelActions,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Specifies a list of secondary actions for a card, each of which can be an action
          # hook or an iframe.
          sig do
            returns(
              T::Array[
                HubspotSDK::Crm::Extensions::TopLevelActions::Secondary::Variants
              ]
            )
          end
          attr_accessor :secondary

          # Defines the primary action for a card, which can be either an action hook or an
          # iframe.
          sig do
            returns(
              T.nilable(
                HubspotSDK::Crm::Extensions::TopLevelActions::Primary::Variants
              )
            )
          end
          attr_reader :primary

          sig do
            params(
              primary:
                T.any(
                  HubspotSDK::Crm::Extensions::ActionHookActionBody::OrHash,
                  HubspotSDK::Crm::Extensions::IFrameActionBody::OrHash
                )
            ).void
          end
          attr_writer :primary

          sig do
            returns(T.nilable(HubspotSDK::Crm::Extensions::IFrameActionBody))
          end
          attr_reader :settings

          sig do
            params(
              settings: HubspotSDK::Crm::Extensions::IFrameActionBody::OrHash
            ).void
          end
          attr_writer :settings

          sig do
            params(
              secondary:
                T::Array[
                  T.any(
                    HubspotSDK::Crm::Extensions::ActionHookActionBody::OrHash,
                    HubspotSDK::Crm::Extensions::IFrameActionBody::OrHash
                  )
                ],
              primary:
                T.any(
                  HubspotSDK::Crm::Extensions::ActionHookActionBody::OrHash,
                  HubspotSDK::Crm::Extensions::IFrameActionBody::OrHash
                ),
              settings: HubspotSDK::Crm::Extensions::IFrameActionBody::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Specifies a list of secondary actions for a card, each of which can be an action
            # hook or an iframe.
            secondary:,
            # Defines the primary action for a card, which can be either an action hook or an
            # iframe.
            primary: nil,
            settings: nil
          )
          end

          sig do
            override.returns(
              {
                secondary:
                  T::Array[
                    HubspotSDK::Crm::Extensions::TopLevelActions::Secondary::Variants
                  ],
                primary:
                  HubspotSDK::Crm::Extensions::TopLevelActions::Primary::Variants,
                settings: HubspotSDK::Crm::Extensions::IFrameActionBody
              }
            )
          end
          def to_hash
          end

          module Secondary
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
                  HubspotSDK::Crm::Extensions::TopLevelActions::Secondary::Variants
                ]
              )
            end
            def self.variants
            end
          end

          # Defines the primary action for a card, which can be either an action hook or an
          # iframe.
          module Primary
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
                  HubspotSDK::Crm::Extensions::TopLevelActions::Primary::Variants
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
