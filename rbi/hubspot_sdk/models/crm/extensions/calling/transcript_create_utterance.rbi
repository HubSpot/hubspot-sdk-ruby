# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          class TranscriptCreateUtterance < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Extensions::Calling::TranscriptCreateUtterance,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :end_time_millis

            sig { returns(HubspotSDK::Crm::Extensions::Calling::Speaker) }
            attr_reader :speaker

            sig do
              params(
                speaker: HubspotSDK::Crm::Extensions::Calling::Speaker::OrHash
              ).void
            end
            attr_writer :speaker

            sig { returns(Integer) }
            attr_accessor :start_time_millis

            sig { returns(String) }
            attr_accessor :text

            sig { returns(T.nilable(String)) }
            attr_reader :language_code

            sig { params(language_code: String).void }
            attr_writer :language_code

            sig do
              params(
                end_time_millis: Integer,
                speaker: HubspotSDK::Crm::Extensions::Calling::Speaker::OrHash,
                start_time_millis: Integer,
                text: String,
                language_code: String
              ).returns(T.attached_class)
            end
            def self.new(
              end_time_millis:,
              speaker:,
              start_time_millis:,
              text:,
              language_code: nil
            )
            end

            sig do
              override.returns(
                {
                  end_time_millis: Integer,
                  speaker: HubspotSDK::Crm::Extensions::Calling::Speaker,
                  start_time_millis: Integer,
                  text: String,
                  language_code: String
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
end
