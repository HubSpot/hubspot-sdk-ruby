# typed: strong

module HubspotSDK
  module Models
    module Meta
      module Origins
        class IPRangeListSimpleParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Meta::Origins::IPRangeListSimpleParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Direction::OrSymbol
                ]
              )
            )
          end
          attr_reader :direction

          sig do
            params(
              direction:
                T::Array[
                  HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Direction::OrSymbol
                ]
            ).void
          end
          attr_writer :direction

          sig do
            returns(
              T.nilable(
                T::Array[
                  HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service::OrSymbol
                ]
              )
            )
          end
          attr_reader :service

          sig do
            params(
              service:
                T::Array[
                  HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service::OrSymbol
                ]
            ).void
          end
          attr_writer :service

          sig do
            params(
              direction:
                T::Array[
                  HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Direction::OrSymbol
                ],
              service:
                T::Array[
                  HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service::OrSymbol
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(direction: nil, service: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                direction:
                  T::Array[
                    HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Direction::OrSymbol
                  ],
                service:
                  T::Array[
                    HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service::OrSymbol
                  ],
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Direction
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Direction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INGRESS =
              T.let(
                :INGRESS,
                HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Direction::TaggedSymbol
              )
            EGRESS =
              T.let(
                :EGRESS,
                HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Direction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Service
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL =
              T.let(
                :EMAIL,
                HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service::TaggedSymbol
              )
            API =
              T.let(
                :API,
                HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service::TaggedSymbol
              )
            DNS =
              T.let(
                :DNS,
                HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service::TaggedSymbol
              )
            WEB_SCRAPING =
              T.let(
                :WEB_SCRAPING,
                HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service::TaggedSymbol
              )
            TEST_SERVICE =
              T.let(
                :TEST_SERVICE,
                HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Meta::Origins::IPRangeListSimpleParams::Service::TaggedSymbol
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
