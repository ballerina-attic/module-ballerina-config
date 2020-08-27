//// Copyright (c) 2018 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
////
//// WSO2 Inc. licenses this file to you under the Apache License,
//// Version 2.0 (the "License"); you may not use this file except
//// in compliance with the License.
//// You may obtain a copy of the License at
////
//// http://www.apache.org/licenses/LICENSE-2.0
////
//// Unless required by applicable law or agreed to in writing,
//// software distributed under the License is distributed on an
//// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
//// KIND, either express or implied.  See the License for the
//// specific language governing permissions and limitations
//// under the License.
//
//import ballerina/config;
//
//function testGetAsString(string key) returns string {
//    return config:getAsString(key);
//}
//
//function testSetConfig(string key, string value) {
//    config:setConfig(key, value);
//}
//
//function testContains(string key) returns boolean {
//    return config:contains(key);
//}
//
//function testGetAsMap(string key) returns map<anydata> {
//    return config:getAsMap(key);
//}
//
//function testGetAsInt(string key) returns int {
//    return config:getAsInt(key);
//}
//
//function testGetAsFloat(string key) returns float {
//    return config:getAsFloat(key);
//}
//
//function testGetAsBoolean(string key) returns boolean {
//    return config:getAsBoolean(key);
//}
//
//function testGetAsArray(string key) returns anydata[] {
//    return config:getAsArray(key);
//}
//
//function testGetAsArray2(string key) returns int[] {
//    var keyArray = config:getAsArray(key);
//    int[]|error ports = keyArray.cloneWithType(IntArray);
//    if (ports is int[]) {
//        return ports;
//    } else {
//        panic ports;
//    }
//}
//
//function testGetAsArray3(string key) returns map<anydata>[] {
//    var keyArray = config:getAsArray(key);
//    map<anydata>[]|error result = keyArray.cloneWithType(AnyMapArray);
//    if (result is error) {
//        panic result;
//    } else {
//        return result;
//    }
//}
//
//function testGetAsStringArray(string key) returns string[] {
//    return <string[] & readonly>config:getAsArray(key);
//}
//
//function testGetAsStringMap(string key) returns map<string> {
//    return <map<string> & readonly>config:getAsMap(key);
//}
//
//type IntArray int[];
//type AnyMapArray map<anydata>[];
//
