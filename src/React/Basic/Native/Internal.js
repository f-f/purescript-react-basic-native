const React = require("react")
const RN = require("react-native")

exports.mergeStyles = function(styles){
  return Object.assign.apply(null, [{}].concat(styles));
};

exports.unsafeCreateNativeElement = function(name){
  return function(props){
    var children = (props.children) ? props.children : [];
    return React.createElement.apply(React, [RN[name], props].concat(children));
  }
};
