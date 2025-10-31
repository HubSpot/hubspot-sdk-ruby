# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class TopLevelActions < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::TopLevelActions,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::CRM::Extensions::TopLevelActions::Secondary::Variants
              ]
            )
          end
          attr_accessor :secondary

          sig do
            returns(
              T.nilable(
                HubspotSDK::CRM::Extensions::TopLevelActions::Primary::Variants
              )
            )
          end
          attr_reader :primary

          sig do
            params(
              primary:
                T.any(
                  HubspotSDK::CRM::Extensions::ActionHookActionBody::OrHash,
                  HubspotSDK::CRM::Extensions::IFrameActionBody::OrHash
                )
            ).void
          end
          attr_writer :primary

          sig do
            returns(T.nilable(HubspotSDK::CRM::Extensions::IFrameActionBody))
          end
          attr_reader :settings

          sig do
            params(
              settings: HubspotSDK::CRM::Extensions::IFrameActionBody::OrHash
            ).void
          end
          attr_writer :settings

          sig do
            params(
              secondary:
                T::Array[
                  T.any(
                    HubspotSDK::CRM::Extensions::ActionHookActionBody::OrHash,
                    HubspotSDK::CRM::Extensions::IFrameActionBody::OrHash
                  )
                ],
              primary:
                T.any(
                  HubspotSDK::CRM::Extensions::ActionHookActionBody::OrHash,
                  HubspotSDK::CRM::Extensions::IFrameActionBody::OrHash
                ),
              settings: HubspotSDK::CRM::Extensions::IFrameActionBody::OrHash
            ).returns(T.attached_class)
          end
          def self.new(secondary:, primary: nil, settings: nil)
          end

          sig do
            override.returns(
              {
                secondary:
                  T::Array[
                    HubspotSDK::CRM::Extensions::TopLevelActions::Secondary::Variants
                  ],
                primary:
                  HubspotSDK::CRM::Extensions::TopLevelActions::Primary::Variants,
                settings: HubspotSDK::CRM::Extensions::IFrameActionBody
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
                  HubspotSDK::CRM::Extensions::ActionHookActionBody,
                  HubspotSDK::CRM::Extensions::IFrameActionBody
                )
              end

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Extensions::TopLevelActions::Secondary::Variants
                ]
              )
            end
            def self.variants
            end
          end

          module Primary
            extend HubspotSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Extensions::ActionHookActionBody,
                  HubspotSDK::CRM::Extensions::IFrameActionBody
                )
              end

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Extensions::TopLevelActions::Primary::Variants
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
