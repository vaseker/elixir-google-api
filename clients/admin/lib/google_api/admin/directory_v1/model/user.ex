# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Admin.Directory_v1.Model.User do
  @moduledoc """
  The Directory API allows you to create and manage your account's users, user aliases, and user Google profile photos. For more information about common tasks, see the [User Accounts Developer's Guide](/admin-sdk/directory/v1/guides/manage-users.html) and the [User Aliases Developer's Guide](/admin-sdk/directory/v1/guides/manage-user-aliases.html).

  ## Attributes

  *   `phones` (*type:* `any()`, *default:* `nil`) - The list of the user's phone numbers. The maximum allowed data size for this field is 1KB.
  *   `changePasswordAtNextLogin` (*type:* `boolean()`, *default:* `nil`) - Indicates if the user is forced to change their password at next login. This setting doesn't apply when [the user signs in via a third-party identity provider](https://support.google.com/a/answer/60224).
  *   `name` (*type:* `GoogleApi.Admin.Directory_v1.Model.UserName.t`, *default:* `nil`) - Holds the given and family names of the user, and the read-only `fullName` value. The maximum number of characters in the `givenName` and in the `familyName` values is 60. In addition, name values support unicode/UTF-8 characters, and can contain spaces, letters (a-z), numbers (0-9), dashes (-), forward slashes (/), and periods (.). For more information about character usage rules, see the [administration help center](https://support.google.com/a/answer/9193374). Maximum allowed data size for this field is 1KB.
  *   `deletionTime` (*type:* `DateTime.t`, *default:* `nil`) - 
  *   `primaryEmail` (*type:* `String.t`, *default:* `nil`) - The user's primary email address. This property is required in a request to create a user account. The `primaryEmail` must be unique and cannot be an alias of another user.
  *   `thumbnailPhotoEtag` (*type:* `String.t`, *default:* `nil`) - Output only. ETag of the user's photo (Read-only)
  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Output only. The customer ID to [retrieve all account users](/admin-sdk/directory/v1/guides/manage-users.html#get_all_users). You can use the alias `my_customer` to represent your account's `customerId`. As a reseller administrator, you can use the resold customer account's `customerId`. To get a `customerId`, use the account's primary domain in the `domain` parameter of a [users.list](/admin-sdk/directory/v1/reference/users/list) request.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#user`) - Output only. The type of the API resource. For Users resources, the value is `admin#directory#user`.
  *   `recoveryEmail` (*type:* `String.t`, *default:* `nil`) - Recovery email of the user.
  *   `includeInGlobalAddressList` (*type:* `boolean()`, *default:* `nil`) - Indicates if the user's profile is visible in the Google Workspace global address list when the contact sharing feature is enabled for the domain. For more information about excluding user profiles, see the [administration help center](https://support.google.com/a/answer/1285988).
  *   `isAdmin` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates a user with super admininistrator privileges. The `isAdmin` property can only be edited in the [Make a user an administrator](/admin-sdk/directory/v1/guides/manage-users.html#make_admin) operation ( [makeAdmin](/admin-sdk/directory/v1/reference/users/makeAdmin.html) method). If edited in the user [insert](/admin-sdk/directory/v1/reference/users/insert.html) or [update](/admin-sdk/directory/v1/reference/users/update.html) methods, the edit is ignored by the API service.
  *   `keywords` (*type:* `any()`, *default:* `nil`) - The list of the user's keywords. The maximum allowed data size for this field is 1KB.
  *   `ipWhitelisted` (*type:* `boolean()`, *default:* `nil`) - If `true`, the user's IP address is subject to a deprecated IP address [`allowlist`](https://support.google.com/a/answer/60752) configuration.
  *   `notes` (*type:* `any()`, *default:* `nil`) - Notes for the user.
  *   `orgUnitPath` (*type:* `String.t`, *default:* `nil`) - The full path of the parent organization associated with the user. If the parent organization is the top-level, it is represented as a forward slash (`/`).
  *   `relations` (*type:* `any()`, *default:* `nil`) - The list of the user's relationships to other users. The maximum allowed data size for this field is 2KB.
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - User's G Suite account creation time. (Read-only)
  *   `suspended` (*type:* `boolean()`, *default:* `nil`) - Indicates if user is suspended.
  *   `hashFunction` (*type:* `String.t`, *default:* `nil`) - Stores the hash format of the `password` property. The following `hashFunction` values are allowed: * `MD5` - Accepts simple hex-encoded values. * `SHA-1` - Accepts simple hex-encoded values. * `crypt` - Compliant with the [C crypt library](https://en.wikipedia.org/wiki/Crypt_%28C%29). Supports the DES, MD5 (hash prefix `$1$`), SHA-256 (hash prefix `$5$`), and SHA-512 (hash prefix `$6$`) hash algorithms. If rounds are specified as part of the prefix, they must be 10,000 or fewer.
  *   `externalIds` (*type:* `any()`, *default:* `nil`) - The list of external IDs for the user, such as an employee or network ID. The maximum allowed data size for this field is 2KB.
  *   `websites` (*type:* `any()`, *default:* `nil`) - The user's websites. The maximum allowed data size for this field is 2KB.
  *   `sshPublicKeys` (*type:* `any()`, *default:* `nil`) - A list of SSH public keys.
  *   `nonEditableAliases` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The list of the user's non-editable alias email addresses. These are typically outside the account's primary domain or sub-domain.
  *   `aliases` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The list of the user's alias email addresses.
  *   `organizations` (*type:* `any()`, *default:* `nil`) - The list of organizations the user belongs to. The maximum allowed data size for this field is 10KB.
  *   `addresses` (*type:* `any()`, *default:* `nil`) - The list of the user's addresses. The maximum allowed data size for this field is 10KB.
  *   `thumbnailPhotoUrl` (*type:* `String.t`, *default:* `nil`) - Output only. The URL of the user's profile photo. The URL might be temporary or private.
  *   `locations` (*type:* `any()`, *default:* `nil`) - The user's locations. The maximum allowed data size for this field is 10KB.
  *   `suspensionReason` (*type:* `String.t`, *default:* `nil`) - Output only. Has the reason a user account is suspended either by the administrator or by Google at the time of suspension. The property is returned only if the `suspended` property is `true`.
  *   `recoveryPhone` (*type:* `String.t`, *default:* `nil`) - Recovery phone of the user. The phone number must be in the E.164 format, starting with the plus sign (+). Example: *+16506661212*.
  *   `ims` (*type:* `any()`, *default:* `nil`) - The list of the user's Instant Messenger (IM) accounts. A user account can have multiple ims properties. But, only one of these ims properties can be the primary IM contact. The maximum allowed data size for this field is 2KB.
  *   `archived` (*type:* `boolean()`, *default:* `nil`) - Indicates if user is archived.
  *   `agreedToTerms` (*type:* `boolean()`, *default:* `nil`) - Output only. This property is `true` if the user has completed an initial login and accepted the Terms of Service agreement.
  *   `isDelegatedAdmin` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if the user is a delegated administrator. Delegated administrators are supported by the API but cannot create or undelete users, or make users administrators. These requests are ignored by the API service. Roles and privileges for administrators are assigned using the [Admin console](https://support.google.com/a/answer/33325).
  *   `posixAccounts` (*type:* `any()`, *default:* `nil`) - The list of [POSIX](https://www.opengroup.org/austin/papers/posix_faq.html) account information for the user.
  *   `lastLoginTime` (*type:* `DateTime.t`, *default:* `nil`) - User's last login time. (Read-only)
  *   `password` (*type:* `String.t`, *default:* `nil`) - User's password
  *   `isMailboxSetup` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if the user's Google mailbox is created. This property is only applicable if the user has been assigned a Gmail license.
  *   `customSchemas` (*type:* `%{optional(String.t) => GoogleApi.Admin.Directory_v1.Model.UserCustomProperties.t}`, *default:* `nil`) - Custom fields of the user. The key is a `schema_name` and its values are `'field_name': 'field_value'`.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. ETag of the resource.
  *   `emails` (*type:* `any()`, *default:* `nil`) - The list of the user's email addresses. The maximum allowed data size for this field is 10KB. This excludes `publicKeyEncryptionCertificates`.
  *   `languages` (*type:* `any()`, *default:* `nil`) - The user's languages. The maximum allowed data size for this field is 1KB.
  *   `isEnforcedIn2Sv` (*type:* `boolean()`, *default:* `nil`) - Output only. Is 2-step verification enforced (Read-only)
  *   `isEnrolledIn2Sv` (*type:* `boolean()`, *default:* `nil`) - Output only. Is enrolled in 2-step verification (Read-only)
  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique ID for the user. A user `id` can be used as a user request URI's `userKey`.
  *   `gender` (*type:* `any()`, *default:* `nil`) - The user's gender. The maximum allowed data size for this field is 1KB.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :phones => any() | nil,
          :changePasswordAtNextLogin => boolean() | nil,
          :name => GoogleApi.Admin.Directory_v1.Model.UserName.t() | nil,
          :deletionTime => DateTime.t() | nil,
          :primaryEmail => String.t() | nil,
          :thumbnailPhotoEtag => String.t() | nil,
          :customerId => String.t() | nil,
          :kind => String.t() | nil,
          :recoveryEmail => String.t() | nil,
          :includeInGlobalAddressList => boolean() | nil,
          :isAdmin => boolean() | nil,
          :keywords => any() | nil,
          :ipWhitelisted => boolean() | nil,
          :notes => any() | nil,
          :orgUnitPath => String.t() | nil,
          :relations => any() | nil,
          :creationTime => DateTime.t() | nil,
          :suspended => boolean() | nil,
          :hashFunction => String.t() | nil,
          :externalIds => any() | nil,
          :websites => any() | nil,
          :sshPublicKeys => any() | nil,
          :nonEditableAliases => list(String.t()) | nil,
          :aliases => list(String.t()) | nil,
          :organizations => any() | nil,
          :addresses => any() | nil,
          :thumbnailPhotoUrl => String.t() | nil,
          :locations => any() | nil,
          :suspensionReason => String.t() | nil,
          :recoveryPhone => String.t() | nil,
          :ims => any() | nil,
          :archived => boolean() | nil,
          :agreedToTerms => boolean() | nil,
          :isDelegatedAdmin => boolean() | nil,
          :posixAccounts => any() | nil,
          :lastLoginTime => DateTime.t() | nil,
          :password => String.t() | nil,
          :isMailboxSetup => boolean() | nil,
          :customSchemas =>
            %{optional(String.t()) => GoogleApi.Admin.Directory_v1.Model.UserCustomProperties.t()}
            | nil,
          :etag => String.t() | nil,
          :emails => any() | nil,
          :languages => any() | nil,
          :isEnforcedIn2Sv => boolean() | nil,
          :isEnrolledIn2Sv => boolean() | nil,
          :id => String.t() | nil,
          :gender => any() | nil
        }

  field(:phones)
  field(:changePasswordAtNextLogin)
  field(:name, as: GoogleApi.Admin.Directory_v1.Model.UserName)
  field(:deletionTime, as: DateTime)
  field(:primaryEmail)
  field(:thumbnailPhotoEtag)
  field(:customerId)
  field(:kind)
  field(:recoveryEmail)
  field(:includeInGlobalAddressList)
  field(:isAdmin)
  field(:keywords)
  field(:ipWhitelisted)
  field(:notes)
  field(:orgUnitPath)
  field(:relations)
  field(:creationTime, as: DateTime)
  field(:suspended)
  field(:hashFunction)
  field(:externalIds)
  field(:websites)
  field(:sshPublicKeys)
  field(:nonEditableAliases, type: :list)
  field(:aliases, type: :list)
  field(:organizations)
  field(:addresses)
  field(:thumbnailPhotoUrl)
  field(:locations)
  field(:suspensionReason)
  field(:recoveryPhone)
  field(:ims)
  field(:archived)
  field(:agreedToTerms)
  field(:isDelegatedAdmin)
  field(:posixAccounts)
  field(:lastLoginTime, as: DateTime)
  field(:password)
  field(:isMailboxSetup)
  field(:customSchemas, as: GoogleApi.Admin.Directory_v1.Model.UserCustomProperties, type: :map)
  field(:etag)
  field(:emails)
  field(:languages)
  field(:isEnforcedIn2Sv)
  field(:isEnrolledIn2Sv)
  field(:id)
  field(:gender)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.User do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
