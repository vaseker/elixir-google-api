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

defmodule GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeBadWhitelist do
  @moduledoc """
  Alert for setting the domain or IP that malicious email comes from as whitelisted domain or IP in Gmail advanced settings.

  ## Attributes

  *   `domainId` (*type:* `GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeDomainId.t`, *default:* `nil`) - The domain ID.
  *   `maliciousEntity` (*type:* `GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeMaliciousEntity.t`, *default:* `nil`) - The entity whose actions triggered a Gmail phishing alert.
  *   `messages` (*type:* `list(GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeGmailMessageInfo.t)`, *default:* `nil`) - The list of messages contained by this alert.
  *   `sourceIp` (*type:* `String.t`, *default:* `nil`) - The source IP address of the malicious email, for example, `127.0.0.1`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domainId =>
            GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeDomainId.t() | nil,
          :maliciousEntity =>
            GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeMaliciousEntity.t() | nil,
          :messages =>
            list(
              GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeGmailMessageInfo.t()
            )
            | nil,
          :sourceIp => String.t() | nil
        }

  field(:domainId, as: GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeDomainId)

  field(:maliciousEntity,
    as: GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeMaliciousEntity
  )

  field(:messages,
    as: GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeGmailMessageInfo,
    type: :list
  )

  field(:sourceIp)
end

defimpl Poison.Decoder,
  for: GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeBadWhitelist do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeBadWhitelist.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterTypeBadWhitelist do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end