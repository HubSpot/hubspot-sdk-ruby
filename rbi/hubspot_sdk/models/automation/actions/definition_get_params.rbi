# typed: strong

module HubSpotSDK
  module Models
    module Automation
      module Actions
        class DefinitionGetParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Automation::Actions::DefinitionGetParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig { returns(String) }
          attr_accessor :definition_id

          # Whether to return only results that have been archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          sig do
            params(
              app_id: Integer,
              definition_id: String,
              archived: T::Boolean,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            app_id:,
            definition_id:,
            # Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                app_id: Integer,
                definition_id: String,
                archived: T::Boolean,
                request_options: HubSpotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
