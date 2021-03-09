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

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter do
  @moduledoc """
  Represents a data source parameter with validation rules, so that parameters can be rendered in the UI. These parameters are given to us by supported data sources, and include all needed information for rendering and validation. Thus, whoever uses this api can decide to generate either generic ui, or custom data source specific forms.

  ## Attributes

  *   `allowedValues` (*type:* `list(String.t)`, *default:* `nil`) - All possible values for the parameter.
  *   `deprecated` (*type:* `boolean()`, *default:* `nil`) - If true, it should not be used in new transfers, and it should not be visible to users.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Parameter description.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Parameter display name in the user interface.
  *   `fields` (*type:* `list(GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter.t)`, *default:* `nil`) - Deprecated. This field has no effect.
  *   `immutable` (*type:* `boolean()`, *default:* `nil`) - Cannot be changed after initial creation.
  *   `maxValue` (*type:* `float()`, *default:* `nil`) - For integer and double values specifies maxminum allowed value.
  *   `minValue` (*type:* `float()`, *default:* `nil`) - For integer and double values specifies minimum allowed value.
  *   `paramId` (*type:* `String.t`, *default:* `nil`) - Parameter identifier.
  *   `recurse` (*type:* `boolean()`, *default:* `nil`) - Deprecated. This field has no effect.
  *   `repeated` (*type:* `boolean()`, *default:* `nil`) - Deprecated. This field has no effect.
  *   `required` (*type:* `boolean()`, *default:* `nil`) - Is parameter required.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Parameter type.
  *   `validationDescription` (*type:* `String.t`, *default:* `nil`) - Description of the requirements for this field, in case the user input does not fulfill the regex pattern or min/max values.
  *   `validationHelpUrl` (*type:* `String.t`, *default:* `nil`) - URL to a help document to further explain the naming requirements.
  *   `validationRegex` (*type:* `String.t`, *default:* `nil`) - Regular expression which can be used for parameter validation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedValues => list(String.t()) | nil,
          :deprecated => boolean() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :fields => list(GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter.t()) | nil,
          :immutable => boolean() | nil,
          :maxValue => float() | nil,
          :minValue => float() | nil,
          :paramId => String.t() | nil,
          :recurse => boolean() | nil,
          :repeated => boolean() | nil,
          :required => boolean() | nil,
          :type => String.t() | nil,
          :validationDescription => String.t() | nil,
          :validationHelpUrl => String.t() | nil,
          :validationRegex => String.t() | nil
        }

  field(:allowedValues, type: :list)
  field(:deprecated)
  field(:description)
  field(:displayName)
  field(:fields, as: GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter, type: :list)
  field(:immutable)
  field(:maxValue)
  field(:minValue)
  field(:paramId)
  field(:recurse)
  field(:repeated)
  field(:required)
  field(:type)
  field(:validationDescription)
  field(:validationHelpUrl)
  field(:validationRegex)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter do
  def decode(value, options) do
    GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
