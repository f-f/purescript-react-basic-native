"use strict";

exports.endsWith = function(str){
  return function(suffix){
    return str.endsWith(suffix)
  }
};

exports.capitalize = function(str){
  return str.charAt(0).toUpperCase() + str.slice(1);
};
