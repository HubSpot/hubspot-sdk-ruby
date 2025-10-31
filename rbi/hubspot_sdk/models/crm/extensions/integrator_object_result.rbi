# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class IntegratorObjectResult < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::IntegratorObjectResult,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T::Array[
                HubspotSDK::CRM::Extensions::IntegratorObjectResult::Action::Variants
              ]
            )
          end
          attr_accessor :actions

          sig { returns(String) }
          attr_accessor :title

          sig { returns(T::Array[HubspotSDK::CRM::Extensions::ObjectToken]) }
          attr_accessor :tokens

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
                    HubspotSDK::CRM::Extensions::ActionHookActionBody::OrHash,
                    HubspotSDK::CRM::Extensions::IFrameActionBody::OrHash
                  )
                ],
              title: String,
              tokens:
                T::Array[HubspotSDK::CRM::Extensions::ObjectToken::OrHash],
              link_url: String
            ).returns(T.attached_class)
          end
          def self.new(id:, actions:, title:, tokens:, link_url: nil)
          end

          sig do
            override.returns(
              {
                id: String,
                actions:
                  T::Array[
                    HubspotSDK::CRM::Extensions::IntegratorObjectResult::Action::Variants
                  ],
                title: String,
                tokens: T::Array[HubspotSDK::CRM::Extensions::ObjectToken],
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
                  HubspotSDK::CRM::Extensions::ActionHookActionBody,
                  HubspotSDK::CRM::Extensions::IFrameActionBody
                )
              end

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Extensions::IntegratorObjectResult::Action::Variants
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
