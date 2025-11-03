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

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T::Array[
                HubspotSDK::Crm::Extensions::IntegratorObjectResult::Action::Variants
              ]
            )
          end
          attr_accessor :actions

          sig { returns(String) }
          attr_accessor :title

          sig { returns(T::Array[HubspotSDK::Crm::Extensions::ObjectToken]) }
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
          def self.new(id:, actions:, title:, tokens:, link_url: nil)
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
