## SimpleCleanCode

A very simple sample project in SwiftUI that uses MVVM architecture with Combine 

## Architecture
![Logo](./images/mvvm-architecture.png) 

In this first release, the project doesn't store local database 

## Project 
* `ApiService.swift` - Web Server where retrieve the JSON data.
* `EndPoint.swift` - Class to manage EndPoints.
* `Post.swift` - Data model with the information to show in the table.
* `MainRow.swift` - The cell of the main list
* `MainContentView.swift` - Main view of the project with the list of items
* `MainViewModel.swift` - ViewModel of the MainContentView, prepare and manage the data for a UI component
* `BaseApi` - Folder with classes to manage request
* `hud` - Folder with hud activity indicator

## Developed By

Antonio Corrales desarrollogit@gmail.com

## License

Copyright 2020 Antonio Corrales

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


