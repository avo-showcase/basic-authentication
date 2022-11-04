# README

This repo demos how to use basic authentication with Avo.

## Approach

1. Extend `Avo::ApplicationController` with the `BasicAuth` concern
1. The concern uses `http_basic_authenticate_with` to use basic auth
1. The concern stores the user in the `Current` model