const React = require("react")
const RN = require("react-native")

exports.unsafeCreateNativeElement = function(name){
  return function(props){
    const children = (props.children) ? props.children : null;
    return React.createElement(RN[name], props, children)
  }
};
