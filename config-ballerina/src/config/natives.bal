// Copyright (c) 2018 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
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

import ballerina/java;

# Checks whether the given key is in the configuration registry.
# ```ballerina
# boolean configAvailable = config:contains("host");
# ```
#
# + key - The configuration key to be looked-up
# + return - Returns true if the key is present; if not returs false
public function contains(@untainted string key) returns boolean = @java:Method {
    name: "contains",
    'class: "org.ballerinalang.stdlib.config.Contains"
} external;

# Sets the specified key/value pair as a configuration.
# ```ballerina
# config:setConfig("john.country", "USA");
# ```
#
# + key - The key of the configuration value to be set
# + value - The configuration value to be set
public function setConfig(string key, string|int|float|boolean value) = @java:Method {
    name: "setConfig",
    'class: "org.ballerinalang.stdlib.config.SetConfig"
} external;

function get(@untainted string key, ValueType vType) returns string|int|float|boolean|map<anydata>|anydata[] = @java:Method {
    name: "get",
    'class: "org.ballerinalang.stdlib.config.GetConfig"
} external;
