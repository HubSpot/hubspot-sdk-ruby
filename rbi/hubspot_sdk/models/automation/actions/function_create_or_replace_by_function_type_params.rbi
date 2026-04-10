# typed: strong

module HubSpotSDK
  module Models
    module Automation
      module Actions
        class FunctionCreateOrReplaceByFunctionTypeParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig { returns(String) }
          attr_accessor :definition_id

          sig do
            returns(
              HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType::OrSymbol
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
                HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType::OrSymbol,
              body: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
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
                  HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType::OrSymbol,
                body: String,
                request_options: HubSpotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module FunctionType
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POST_ACTION_EXECUTION =
              T.let(
                :POST_ACTION_EXECUTION,
                HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType::TaggedSymbol
              )
            POST_FETCH_OPTIONS =
              T.let(
                :POST_FETCH_OPTIONS,
                HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType::TaggedSymbol
              )
            PRE_ACTION_EXECUTION =
              T.let(
                :PRE_ACTION_EXECUTION,
                HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType::TaggedSymbol
              )
            PRE_FETCH_OPTIONS =
              T.let(
                :PRE_FETCH_OPTIONS,
                HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType::TaggedSymbol
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
