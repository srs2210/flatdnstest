/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "prod_host_project_id" {
  description = "Prod host project ID."
  type        = string
}

variable "nonprod_host_project_id" {
  description = "Non-prod host project ID."
  type        = string
}

variable "prod_shared_vpc_name" {
  description = "Prod Shared VPC name."
  type        = string
}

variable "nonprod_shared_vpc_name" {
  description = "Non-Prod Shared VPC name."
  type        = string
}

variable "forwarding_zones" {
  description = "List of Cloud DNS forwarding zones to create in Prod host project."
  type = list(object({
    name                  = string
    domain                = string
    target_server_ip_list = list(string)
  }))
}

variable "inbound_policy_name" {
  description = "Inbound Policy Name."
  type        = string
}

variable "prod_private_zones" {
  description = "List of Cloud DNS private zones to create in Prod host project."
  type = list(object({
    name            = string
    domain          = string
  }))
}

variable "nonprod_private_zones" {
  description = "List of Cloud DNS private zones to create in Non-prod host project."
  type = list(object({
    name            = string
    domain          = string
  }))
}
