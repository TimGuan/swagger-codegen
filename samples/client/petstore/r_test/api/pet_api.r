# Swagger Petstore
# 
# This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.
# 
# OpenAPI spec version: 1.0.0
# Contact: apiteam@swagger.io
# Generated by: https://github.com/swagger-api/swagger-codegen.git

pet_api <- R6::R6Class(
  'pet_api',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    host = NULL,
    basePath = NULL,
    scheme = NULL,
    url = NULL,
    initialize = function(host, basePath, scheme){
      self$host <- host
      self$basePath <- basePath
      self$scheme <- scheme
      self$url <- sprintf("%s://%s/%s/pet/", scheme, host, basePath)
    },

    add_pet = function(body){
      resp <- httr::POST(paste0(self$url), httr::add_headers("User-Agent" = self$userAgent, "accept" = ""application/json""), "content-type" = ""application/xml"")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
      } else {
        Response$new("Unexpected response status code", resp)
      }

    }
    delete_pet = function(pet_id, api_key){
      resp <- httr::DELETE(paste0(self$url, pet_id), httr::add_headers("User-Agent" = self$userAgent, "content-type" = ""application/xml"")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
      } else {
        Response$new("Unexpected response status code", resp)
      }

    }
    find_pets_by_status = function(status){
      resp <- httr::GET(paste0(self$url), httr::add_headers("User-Agent" = self$userAgent, "content-type" = ""application/xml"")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        parsed <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),
                                 simplifyVector = FALSE)
        result <- Pet$fromJSON(parsed)
        Response$new(result, resp)
      } else {
        Response$new("Unexpected response status code", resp)
      }

    }
    find_pets_by_tags = function(tags){
      resp <- httr::GET(paste0(self$url), httr::add_headers("User-Agent" = self$userAgent, "content-type" = ""application/xml"")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        parsed <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),
                                 simplifyVector = FALSE)
        result <- Pet$fromJSON(parsed)
        Response$new(result, resp)
      } else {
        Response$new("Unexpected response status code", resp)
      }

    }
    get_pet_by_id = function(pet_id){
      resp <- httr::GET(paste0(self$url, pet_id), httr::add_headers("User-Agent" = self$userAgent, "content-type" = ""application/xml"")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        parsed <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),
                                 simplifyVector = FALSE)
        result <- Pet$fromJSON(parsed)
        Response$new(result, resp)
      } else {
        Response$new("Unexpected response status code", resp)
      }

    }
    update_pet = function(body){
      resp <- httr::PUT(paste0(self$url), httr::add_headers("User-Agent" = self$userAgent, "accept" = ""application/json""), "content-type" = ""application/xml"")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
      } else {
        Response$new("Unexpected response status code", resp)
      }

    }
    update_pet_with_form = function(pet_id, name, status){
      resp <- httr::POST(paste0(self$url, pet_id), httr::add_headers("User-Agent" = self$userAgent, "accept" = ""application/x-www-form-urlencoded""), "content-type" = ""application/xml"")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
      } else {
        Response$new("Unexpected response status code", resp)
      }

    }
    upload_file = function(pet_id, additional_metadata, file){
      resp <- httr::POST(paste0(self$url, pet_id), httr::add_headers("User-Agent" = self$userAgent, "accept" = ""multipart/form-data""), "content-type" = ""application/json"")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        parsed <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"),
                                 simplifyVector = FALSE)
        result <- ApiResponse$fromJSON(parsed)
        Response$new(result, resp)
      } else {
        Response$new("Unexpected response status code", resp)
      }

    }
  )
) 
