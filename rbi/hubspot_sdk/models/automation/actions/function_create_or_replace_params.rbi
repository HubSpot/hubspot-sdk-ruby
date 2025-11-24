# typed: strong

module HubspotSDK
  module Models
    module Automation
      module Actions
        class FunctionCreateOrReplaceParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig { returns(String) }
          attr_accessor :definition_id

          sig do
            returns(
              HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType::OrSymbol
            )
          end
          attr_accessor :function_type

          sig { returns(String) }
          attr_accessor :body

          sig do
            params(
              app_id: Integer,
              definition_id: String,
              function_type:
                HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType::OrSymbol,
              body: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            app_id:,
            definition_id:,
            function_type:,
            body:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                app_id: Integer,
                definition_id: String,
                function_type:
                  HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType::OrSymbol,
                body: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module FunctionType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POST_ACTION_EXECUTION =
              T.let(
                :POST_ACTION_EXECUTION,
                HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType::TaggedSymbol
              )
            POST_FETCH_OPTIONS =
              T.let(
                :POST_FETCH_OPTIONS,
                HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType::TaggedSymbol
              )
            PRE_ACTION_EXECUTION =
              T.let(
                :PRE_ACTION_EXECUTION,
                HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType::TaggedSymbol
              )
            PRE_FETCH_OPTIONS =
              T.let(
                :PRE_FETCH_OPTIONS,
                HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType::TaggedSymbol
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
