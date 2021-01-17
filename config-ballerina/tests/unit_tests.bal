// Copyright (c) 2020 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/test;

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsString() {
    string result = getAsString("\"ballerina.http.host\"");
    test:assertEquals(result, "10.100.1.205",  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsString2() {
    string result = getAsString("hello.basePath");
    test:assertEquals(result, "/hello",  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsString3() {
    string result = getAsString("multiline.strings.txt");
    string expected = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut " +
    "labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut " +
    "aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore " +
    "eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt " +
    "mollit anim id est laborum.";
    test:assertEquals(result, expected,  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsStringNegative() {
    string result = getAsString("invalid.key");
    test:assertEquals(result, "",  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsInt() {
    int result = getAsInt("http1.port");
    test:assertEquals(result, 8085,  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsInt2() {
    int result = getAsInt("http3.port");
    test:assertEquals(result, 7070,  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsInt3() {
    int result = getAsInt("http1.request_limit");
    test:assertEquals(result, 50,  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsIntNegative() {
    int result = getAsInt("invalid.key");
    test:assertEquals(result, 0,  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsFloat() {
    float result = getAsFloat("http1.eviction_factor");
    test:assertEquals(result, 0.3455,  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsFloatNegative() {
    float result = getAsFloat("invalid.key");
    test:assertEquals(result, 0.0,  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsBoolean() {
    boolean result = getAsBoolean("http1.caching_enabled");
    test:assertEquals(result, true,  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsBooleanNegative() {
    boolean result = getAsBoolean("invalid.$key");
    test:assertEquals(result, false,  msg = "The result does not match");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsArray() {
    var keyArray = getAsArray("listenerConfig.keyStore.ports");
    int[]|error ports = keyArray.cloneWithType(IntArray);
    if (ports is int[]) {
        test:assertEquals(ports[0], 9090, msg = "The result does not match.");
        test:assertEquals(ports[1], 9091, msg = "The result does not match.");
        test:assertEquals(ports[2], 9092, msg = "The result does not match.");
    } else {
        panic ports;
    }
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsArray2() {
    string[] paths = <string[] & readonly>getAsArray("listenerConfig.keyStore.paths");
    test:assertEquals(paths[0], "/etc", msg = "The result does not match.");
    test:assertEquals(paths[1], "/tmp", msg = "The result does not match.");
    test:assertEquals(paths[2], "/usr/lib/", msg = "The result does not match.");
}

@test:Config {
    groups: ["config"]
}
public isolated function testGetAsStringMap() {
    map<string> resultMap = <map<string> & readonly>getAsMap("employee");
    test:assertEquals(resultMap["name"], "John", msg = "The result does not match.");
    test:assertEquals(resultMap["city"], "Sydney", msg = "The result does not match.");
}

type IntArray int[];
type AnyMapArray map<anydata>[];
