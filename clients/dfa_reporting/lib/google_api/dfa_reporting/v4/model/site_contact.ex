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

defmodule GoogleApi.DFAReporting.V4.Model.SiteContact do
  @moduledoc """
  Site Contact

  ## Attributes

  *   `address` (*type:* `String.t`, *default:* `nil`) - Address of this site contact.
  *   `contactType` (*type:* `String.t`, *default:* `nil`) - Site contact type.
  *   `email` (*type:* `String.t`, *default:* `nil`) - Email address of this site contact. This is a required field.
  *   `firstName` (*type:* `String.t`, *default:* `nil`) - First name of this site contact.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this site contact. This is a read-only, auto-generated field.
  *   `lastName` (*type:* `String.t`, *default:* `nil`) - Last name of this site contact.
  *   `phone` (*type:* `String.t`, *default:* `nil`) - Primary phone number of this site contact.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title or designation of this site contact.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t() | nil,
          :contactType => String.t() | nil,
          :email => String.t() | nil,
          :firstName => String.t() | nil,
          :id => String.t() | nil,
          :lastName => String.t() | nil,
          :phone => String.t() | nil,
          :title => String.t() | nil
        }

  field(:address)
  field(:contactType)
  field(:email)
  field(:firstName)
  field(:id)
  field(:lastName)
  field(:phone)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.SiteContact do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.SiteContact.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.SiteContact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end