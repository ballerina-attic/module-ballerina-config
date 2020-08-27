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
//function testDottedTableHeaderWithQuotedEntries () returns (string|()) {
//    return config:getAsString("\"hello:sayHello\".test.test1.\"groups\"");
//}
//
//function testColonSeparatedTableHeader () returns (string|()) {
//    return config:getAsString("\"hello:sayHello1:123\".groups");
//}
//
//function testDottedKeyWithQuotedEntries () returns (string|()) {
//    return config:getAsString("hello.test.\"xxx\".\"groups.123\"");
//}
//
//function testSlashSeparatedKey () returns (string|()) {
//    return config:getAsString("a.b.\"123/pqr/tz\"");
//}
//
//function testSlashSeparatedHeaderAndKey () returns (string|()) {
//    return config:getAsString("\"a/b/r\".\"456/pqr\"");
//}
//
//function testSimpleKey () returns (string|()) {
//    return config:getAsString("abc123.testKey");
//}
