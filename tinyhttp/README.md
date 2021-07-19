# tinyhttp

## What

TinyHTTP is a small HTTP client whose only dependency is Net:HTTP. It allows you to make GET, POST, PUT, and DELETE request.

## Usage

## GET Requests

```
TinyHTTP.get(url: "https://google.com", params: {id: 5}, headers: {})
```

## POST Requests

```
TinyHTTP.post("https://api.post.me", body: {content: "Hello World"}, headers: {})
```

## PUT Requests

```
TinyHTTP.put("https://api.put.me", body: {id: 1, content: "Hello Brave New World"}, headers: {})
```

## Delete Requests

```
TinyHTTP.delete("https://api.delete.me", body: {id: 2 }, headers: {})
```
