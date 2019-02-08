export const fieldTypeNameReplacements: {[key:string]:string;} = 
  { "StyleProp" : "CSS",
    "Element.JSX" : "JSX",
    "ReactElement.React" : "React",
    "ScrollViewProps" : "(Record ScrollViewProps)"
  }

export const ignoreForeignDataList: string[] =
  [ "Array", "CSS", "Element.JSX", "JSX", "StyleProp", "(Record ScrollViewProps)", "ReactElement.React" ]

export const noChildren: string[] =
  [ "button" ]
