const React = require("react")
const RN = require("react-native")

exports.unsafeCreateNativeElement = function(name){
  return function(props){
    var children = (props.children) ? props.children : null;
    if(children && children.length === 1){children = children[0]}
    return React.createElement(RN[name], props, children)
  }
};
