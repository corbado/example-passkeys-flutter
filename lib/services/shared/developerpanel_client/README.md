# developerpanel_client
API for managing projects (list, create, and delete projects).

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  developerpanel_client:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  developerpanel_client:
    path: /path/to/developerpanel_client
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:developerpanel_client/api.dart';


final api_instance = ProjectsApi();
final v1ProjectsDeleteDeleteRequest = V1ProjectsDeleteDeleteRequest(); // V1ProjectsDeleteDeleteRequest | 

try {
    final result = api_instance.v1ProjectsDeleteDelete(v1ProjectsDeleteDeleteRequest);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->v1ProjectsDeleteDelete: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *https://app.corbado.com/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ProjectsApi* | [**v1ProjectsDeleteDelete**](doc//ProjectsApi.md#v1projectsdeletedelete) | **DELETE** /v1/projects/delete | Delete a project
*ProjectsApi* | [**v1ProjectsGet**](doc//ProjectsApi.md#v1projectsget) | **GET** /v1/projects | List projects
*ProjectsApi* | [**v1ProjectsPost**](doc//ProjectsApi.md#v1projectspost) | **POST** /v1/projects | Create a new project
*ProjectsApi* | [**v1ProjectsProjectIDAuthStatsGet**](doc//ProjectsApi.md#v1projectsprojectidauthstatsget) | **GET** /v1/projects/{projectID}/authStats | Get authentication statistics
*ProjectsApi* | [**v1ProjectsProjectIDAuthlogsGet**](doc//ProjectsApi.md#v1projectsprojectidauthlogsget) | **GET** /v1/projects/{projectID}/authlogs | List authentication logs
*ProjectsApi* | [**v1ProjectsProjectIDUsersGet**](doc//ProjectsApi.md#v1projectsprojectidusersget) | **GET** /v1/projects/{projectID}/users | List users
*UsersApi* | [**v1UsersDelete**](doc//UsersApi.md#v1usersdelete) | **DELETE** /v1/users | Delete user
*UsersApi* | [**v1UsersPut**](doc//UsersApi.md#v1usersput) | **PUT** /v1/users | Update username


## Documentation For Models

 - [AuthLog](doc//AuthLog.md)
 - [AuthStat](doc//AuthStat.md)
 - [ErrorResponse](doc//ErrorResponse.md)
 - [Paging](doc//Paging.md)
 - [Project](doc//Project.md)
 - [ProjectUser](doc//ProjectUser.md)
 - [User](doc//User.md)
 - [V1ProjectsDeleteDelete200Response](doc//V1ProjectsDeleteDelete200Response.md)
 - [V1ProjectsDeleteDeleteRequest](doc//V1ProjectsDeleteDeleteRequest.md)
 - [V1ProjectsGet200Response](doc//V1ProjectsGet200Response.md)
 - [V1ProjectsGet200ResponseData](doc//V1ProjectsGet200ResponseData.md)
 - [V1ProjectsPost200Response](doc//V1ProjectsPost200Response.md)
 - [V1ProjectsPostRequest](doc//V1ProjectsPostRequest.md)
 - [V1ProjectsProjectIDAuthStatsGet200Response](doc//V1ProjectsProjectIDAuthStatsGet200Response.md)
 - [V1ProjectsProjectIDAuthStatsGet200ResponseData](doc//V1ProjectsProjectIDAuthStatsGet200ResponseData.md)
 - [V1ProjectsProjectIDAuthlogsGet200Response](doc//V1ProjectsProjectIDAuthlogsGet200Response.md)
 - [V1ProjectsProjectIDAuthlogsGet200ResponseData](doc//V1ProjectsProjectIDAuthlogsGet200ResponseData.md)
 - [V1ProjectsProjectIDUsersGet200Response](doc//V1ProjectsProjectIDUsersGet200Response.md)
 - [V1ProjectsProjectIDUsersGet200ResponseData](doc//V1ProjectsProjectIDUsersGet200ResponseData.md)
 - [V1UsersPutRequest](doc//V1UsersPutRequest.md)


## Documentation For Authorization

Endpoints do not require authorization.


## Author



