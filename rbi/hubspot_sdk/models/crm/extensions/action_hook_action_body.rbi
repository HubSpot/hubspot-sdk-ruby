# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ActionHookActionBody < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::ActionHookActionBody,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The HTTP method to be used when making the call, which can be set to GET, POST,
          # PUT, DELETE, or PATCH. If using GET or DELETE
          sig do
            returns(
              HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
            )
          end
          attr_accessor :http_method

          # A list of property names that will be included on the action. See the
          # documentation for more information
          sig { returns(T::Array[String]) }
          attr_accessor :property_names_included

          # The type of status.
          sig do
            returns(
              HubspotSDK::Crm::Extensions::ActionHookActionBody::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # The URL endpoint that will be called when the action is triggered.
          sig { returns(String) }
          attr_accessor :url

          sig do
            returns(
              T.nilable(HubspotSDK::Crm::Extensions::ActionConfirmationBody)
            )
          end
          attr_reader :confirmation

          sig do
            params(
              confirmation:
                HubspotSDK::Crm::Extensions::ActionConfirmationBody::OrHash
            ).void
          end
          attr_writer :confirmation

          # The label for this property as you'd like it displayed to users.
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          sig do
            params(
              http_method:
                HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::OrSymbol,
              property_names_included: T::Array[String],
              type:
                HubspotSDK::Crm::Extensions::ActionHookActionBody::Type::OrSymbol,
              url: String,
              confirmation:
                HubspotSDK::Crm::Extensions::ActionConfirmationBody::OrHash,
              label: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The HTTP method to be used when making the call, which can be set to GET, POST,
            # PUT, DELETE, or PATCH. If using GET or DELETE
            http_method:,
            # A list of property names that will be included on the action. See the
            # documentation for more information
            property_names_included:,
            # The type of status.
            type:,
            # The URL endpoint that will be called when the action is triggered.
            url:,
            confirmation: nil,
            # The label for this property as you'd like it displayed to users.
            label: nil
          )
          end

          sig do
            override.returns(
              {
                http_method:
                  HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol,
                property_names_included: T::Array[String],
                type:
                  HubspotSDK::Crm::Extensions::ActionHookActionBody::Type::TaggedSymbol,
                url: String,
                confirmation:
                  HubspotSDK::Crm::Extensions::ActionConfirmationBody,
                label: String
              }
            )
          end
          def to_hash
          end

          # The HTTP method to be used when making the call, which can be set to GET, POST,
          # PUT, DELETE, or PATCH. If using GET or DELETE
          module HTTPMethod
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONNECT =
              T.let(
                :CONNECT,
                HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
              )
            DELETE =
              T.let(
                :DELETE,
                HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
              )
            GET =
              T.let(
                :GET,
                HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
              )
            HEAD =
              T.let(
                :HEAD,
                HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
              )
            OPTIONS =
              T.let(
                :OPTIONS,
                HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
              )
            PATCH =
              T.let(
                :PATCH,
                HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
              )
            PUT =
              T.let(
                :PUT,
                HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
              )
            TRACE =
              T.let(
                :TRACE,
                HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::ActionHookActionBody::HTTPMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The type of status.
          module Type
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::ActionHookActionBody::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTION_HOOK =
              T.let(
                :ACTION_HOOK,
                HubspotSDK::Crm::Extensions::ActionHookActionBody::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::ActionHookActionBody::Type::TaggedSymbol
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
