---
created: 23-09-06T00:48:55
tags: []
source: https://openapi-generator.tech/docs/generators/dart-dio/
author:
---

# Documentation for the dart-dio Generator | OpenAPI Generator

| Property                            | Value                                | Notes                                      |
| ----------------------------------- | ------------------------------------ | ------------------------------------------ |
| generator name                      | dart-dio                             | pass this to the generate command after -g |
| generator stability                 | STABLE                               |                                            |
| generator type                      | CLIENT                               |                                            |
| generator language                  | Dart                                 |                                            |
| generator default templating engine | mustache                             |                                            |
| helpTxt                             | Generates a Dart Dio client library. |                                            |

## [CONFIG OPTIONS](https://openapi-generator.tech/docs/generators/dart-dio/#config-options "Direct link to CONFIG OPTIONS")

These options may be applied as additional-properties (cli) or configOptions (plugins). Refer to [configuration docs](https://openapi-generator.tech/docs/configuration) for more details.

| Option                  | Description                                                                                  | Values | Default |
| ----------------------- | -------------------------------------------------------------------------------------------- | ------ | ------- |
| allowUnicodeIdentifiers | boolean, toggles whether unicode identifiers are allowed in names or not, default is `false` |        | false   |
| dateLibrary             | Specify Date library                                                                         |

**core**

\[DEFAULT\] Dart core library (DateTime)

**timemachine**

Time Machine is date and time library for Flutter, Web, and Server with support for timezones, calendars, cultures, formatting and parsing.

| core |
| disallowAdditionalPropertiesIfNotPresent | If false, the `additionalProperties` implementation (set to `true` by default) is compliant with the OAS and JSON schema specifications. If true (default), keep the old (incorrect) behaviour that `additionalProperties` is set to `false` by default. |

**false**

The `additionalProperties` implementation is compliant with the OAS and JSON schema specifications.

**true**

Keep the old (incorrect) behaviour that `additionalProperties` is set to `false` by default.

| true |
| ensureUniqueParams | Whether to ensure parameter names are unique in an operation (rename parameters that are not). | | true |
| enumUnknownDefaultCase | If the server adds new enum cases, that are unknown by an old spec/client, the client will fail to parse the network response.With this option enabled, each enum will have a new case, `unknown_default_open_api`, so that when the server sends an enum case that is not known by the client/spec, they can safely fallback to this case. |

**false**

No changes to the enum`s are made, this is the default option.

**true**

With this option enabled, each enum will have a new case, `unknown_default_open_api`, so that when the enum case sent by the server is not known by the client/spec, can safely be decoded to this case.

| false |
| finalProperties | Whether properties are marked as final when using Json Serializable for serialization | | true |
| legacyDiscriminatorBehavior | Set to false for generators with better support for discriminators. (Python, Java, Go, PowerShell, C# have this `enabled` by default). |

**true**

The mapping in the discriminator includes descendent schemas that allOf inherit from self and the discriminator mapping schemas in the OAS document.

**false**

The mapping in the discriminator includes any descendent schemas that allOf inherit from self, any oneOf schemas, any anyOf schemas, any x-discriminator-values, and the discriminator mapping schemas in the OAS document AND Codegen validates that oneOf and anyOf schemas contain the required discriminator and throws an error if the discriminator is missing.

| true |
| prependFormOrBodyParameters | Add form or body parameters to the beginning of the parameter list. | | false |
| pubAuthor | Author name in generated pubspec | | Author |
| pubAuthorEmail | Email address of the author in generated pubspec | | author@homepage |
| pubDescription | Description in generated pubspec | | OpenAPI API client |
| pubHomepage | Homepage in generated pubspec | | homepage |
| pubLibrary | Library name in generated code | | openapi.api |
| pubName | Name in generated pubspec | | openapi |
| pubPublishTo | Publish_to in generated pubspec | | null |
| pubRepository | Repository in generated pubspec | | null |
| pubVersion | Version in generated pubspec | | 1.0.0 |
| serializationLibrary | Specify serialization library |

**built_value**

\[DEFAULT\] built_value

**json_serializable**

\[BETA\] json_serializable

| built_value |
| sortModelPropertiesByRequiredFlag | Sort model properties to place required parameters before optional parameters. | | true |
| sortParamsByRequiredFlag | Sort method arguments to place required parameters before optional parameters. | | true |
| sourceFolder | source folder for generated code | | src |
| useEnumExtension | Allow the `x-enum-values` extension for enums | | false |

## [IMPORT MAPPING](https://openapi-generator.tech/docs/generators/dart-dio/#import-mapping "Direct link to IMPORT MAPPING")

| Type/Alias | Imports |
| ---------- | ------- |

## [INSTANTIATION TYPES](https://openapi-generator.tech/docs/generators/dart-dio/#instantiation-types "Direct link to INSTANTIATION TYPES")

| Type/Alias | Instantiated By |
| ---------- | --------------- |

## [LANGUAGE PRIMITIVES](https://openapi-generator.tech/docs/generators/dart-dio/#language-primitives "Direct link to LANGUAGE PRIMITIVES")

- String
- bool
- double
- int
- num

## [RESERVED WORDS](https://openapi-generator.tech/docs/generators/dart-dio/#reserved-words "Direct link to RESERVED WORDS")

- abstract
- as
- assert
- async
- await
- break
- case
- catch
- class
- const
- continue
- covariant
- default
- deferred
- do
- dynamic
- else
- enum
- export
- extends
- extension
- external
- factory
- false
- final
- finally
- for
- function
- get
- hide
- if
- implements
- import
- in
- inout
- interface
- is
- late
- library
- mixin
- native
- new
- null
- of
- on
- operator
- out
- part
- patch
- required
- rethrow
- return
- set
- show
- source
- static
- super
- switch
- sync
- this
- throw
- true
- try
- typedef
- var
- void
- while
- with
- yield

## [FEATURE SET](https://openapi-generator.tech/docs/generators/dart-dio/#feature-set "Direct link to FEATURE SET")

### [Client Modification Feature](https://openapi-generator.tech/docs/generators/dart-dio/#client-modification-feature "Direct link to Client Modification Feature")

| Name           | Supported | Defined By       |
| -------------- | --------- | ---------------- |
| BasePath       | ✓         | ToolingExtension |
| Authorizations | ✓         | ToolingExtension |
| UserAgent      | ✓         | ToolingExtension |
| MockServer     | ✗         | ToolingExtension |

### [Data Type Feature](https://openapi-generator.tech/docs/generators/dart-dio/#data-type-feature "Direct link to Data Type Feature")

| Name                          | Supported | Defined By       |
| ----------------------------- | --------- | ---------------- |
| Custom                        | ✗         | OAS2,OAS3        |
| Int32                         | ✓         | OAS2,OAS3        |
| Int64                         | ✓         | OAS2,OAS3        |
| Float                         | ✓         | OAS2,OAS3        |
| Double                        | ✓         | OAS2,OAS3        |
| Decimal                       | ✓         | ToolingExtension |
| String                        | ✓         | OAS2,OAS3        |
| Byte                          | ✓         | OAS2,OAS3        |
| Binary                        | ✓         | OAS2,OAS3        |
| Boolean                       | ✓         | OAS2,OAS3        |
| Date                          | ✓         | OAS2,OAS3        |
| DateTime                      | ✓         | OAS2,OAS3        |
| Password                      | ✓         | OAS2,OAS3        |
| File                          | ✓         | OAS2             |
| Uuid                          | ✗         |                  |
| Array                         | ✓         | OAS2,OAS3        |
| Null                          | ✗         | OAS3             |
| AnyType                       | ✗         | OAS2,OAS3        |
| Object                        | ✓         | OAS2,OAS3        |
| Maps                          | ✓         | ToolingExtension |
| CollectionFormat              | ✓         | OAS2             |
| CollectionFormatMulti         | ✓         | OAS2             |
| Enum                          | ✓         | OAS2,OAS3        |
| ArrayOfEnum                   | ✓         | ToolingExtension |
| ArrayOfModel                  | ✓         | ToolingExtension |
| ArrayOfCollectionOfPrimitives | ✓         | ToolingExtension |
| ArrayOfCollectionOfModel      | ✓         | ToolingExtension |
| ArrayOfCollectionOfEnum       | ✓         | ToolingExtension |
| MapOfEnum                     | ✓         | ToolingExtension |
| MapOfModel                    | ✓         | ToolingExtension |
| MapOfCollectionOfPrimitives   | ✓         | ToolingExtension |
| MapOfCollectionOfModel        | ✓         | ToolingExtension |
| MapOfCollectionOfEnum         | ✓         | ToolingExtension |

### [Documentation Feature](https://openapi-generator.tech/docs/generators/dart-dio/#documentation-feature "Direct link to Documentation Feature")

| Name   | Supported | Defined By       |
| ------ | --------- | ---------------- |
| Readme | ✓         | ToolingExtension |
| Model  | ✓         | ToolingExtension |
| Api    | ✓         | ToolingExtension |

### [Global Feature](https://openapi-generator.tech/docs/generators/dart-dio/#global-feature "Direct link to Global Feature")

| Name                    | Supported | Defined By |
| ----------------------- | --------- | ---------- |
| Host                    | ✓         | OAS2,OAS3  |
| BasePath                | ✓         | OAS2,OAS3  |
| Info                    | ✓         | OAS2,OAS3  |
| Schemes                 | ✗         | OAS2,OAS3  |
| PartialSchemes          | ✓         | OAS2,OAS3  |
| Consumes                | ✓         | OAS2       |
| Produces                | ✓         | OAS2       |
| ExternalDocumentation   | ✓         | OAS2,OAS3  |
| Examples                | ✓         | OAS2,OAS3  |
| XMLStructureDefinitions | ✗         | OAS2,OAS3  |
| MultiServer             | ✗         | OAS3       |
| ParameterizedServer     | ✗         | OAS3       |
| ParameterStyling        | ✗         | OAS3       |
| Callbacks               | ✗         | OAS3       |
| LinkObjects             | ✗         | OAS3       |

### [Parameter Feature](https://openapi-generator.tech/docs/generators/dart-dio/#parameter-feature "Direct link to Parameter Feature")

| Name          | Supported | Defined By |
| ------------- | --------- | ---------- |
| Path          | ✓         | OAS2,OAS3  |
| Query         | ✓         | OAS2,OAS3  |
| Header        | ✓         | OAS2,OAS3  |
| Body          | ✓         | OAS2       |
| FormUnencoded | ✓         | OAS2       |
| FormMultipart | ✓         | OAS2       |
| Cookie        | ✓         | OAS3       |

### [Schema Support Feature](https://openapi-generator.tech/docs/generators/dart-dio/#schema-support-feature "Direct link to Schema Support Feature")

| Name         | Supported | Defined By |
| ------------ | --------- | ---------- |
| Simple       | ✓         | OAS2,OAS3  |
| Composite    | ✓         | OAS2,OAS3  |
| Polymorphism | ✓         | OAS2,OAS3  |
| Union        | ✓         | OAS3       |
| allOf        | ✓         | OAS2,OAS3  |
| anyOf        | ✓         | OAS3       |
| oneOf        | ✓         | OAS3       |
| not          | ✗         | OAS3       |

### [Security Feature](https://openapi-generator.tech/docs/generators/dart-dio/#security-feature "Direct link to Security Feature")

| Name                     | Supported | Defined By |
| ------------------------ | --------- | ---------- |
| BasicAuth                | ✓         | OAS2,OAS3  |
| ApiKey                   | ✓         | OAS2,OAS3  |
| OpenIDConnect            | ✗         | OAS3       |
| BearerToken              | ✓         | OAS3       |
| OAuth2_Implicit          | ✓         | OAS2,OAS3  |
| OAuth2_Password          | ✗         | OAS2,OAS3  |
| OAuth2_ClientCredentials | ✗         | OAS2,OAS3  |
| OAuth2_AuthorizationCode | ✗         | OAS2,OAS3  |
| SignatureAuth            | ✗         | OAS3       |

### [Wire Format Feature](https://openapi-generator.tech/docs/generators/dart-dio/#wire-format-feature "Direct link to Wire Format Feature")

| Name     | Supported | Defined By       |
| -------- | --------- | ---------------- |
| JSON     | ✓         | OAS2,OAS3        |
| XML      | ✗         | OAS2,OAS3        |
| PROTOBUF | ✗         | ToolingExtension |
| Custom   | ✗         | OAS2,OAS3        |

[Documentation for the dart-dio Generator | OpenAPI Generator](https://openapi-generator.tech/docs/generators/dart-dio/)
