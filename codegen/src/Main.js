exports.endsWith = function(str){
  return function(suffix){
    return str.endsWith(suffix)
  }
};
