# Exporter

# Problem

Lets say you have instances of two data types, Comment and Annotation, that need to get saved to a Remote Store of some type.

# Assumptions

1. Comment object has two properties named as userid and message.
2. Annotation object has four properties names userId, color, image and message.
3. RPFirebase / RPGraphQL servers need unique app name, unique app id and unique app path from the app to initialize the server.

The above two objects (Comment / Annotation) need to get saved to a remote servers RPFirebase/RPGraphQL (not real Firebase/GraphQL).

# Goal

Create a framework, which help us to send/export message (comment/annotation) to a remote server and integrate the framework into a main project. We can add this framework into all the project which has same requirement.

Framework must have the following capabilities:

1. Framework can be used in multiple projects so we should not keep any credentials inside framework relates one project. Main project should have a capability to pass the credentials to framework and framework should work based on what it gets from the project.
2. Flexibility to change from the existing server to a new server without changing the architecture.
3. Capability to add a new server with minimal changes.
4. Capabillity to add a new message type (like comment/annotation) without updating pattern.

# Solution

Created a framework with all the above capabilities.

```
https://github.com/balasaida/MessageExporter
```

Added a framework into the project

```
https://github.com/balasaida/Exporter
```

MyExporter project demonstrates how to use the MyMessageExporter framework and helps you to understand the framework better.

## Requirements

- iOS 12.0+ | macOS 10.15.5+
- Xcode 12.0

# Usage

To add the framework to your project. You should do

```
carthage update
