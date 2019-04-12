export const fieldTypeNameReplacements: {[key:string]:string;} = 
  { "Date" : "JSDate",
    "Element.JSX" : "JSX",
    "ReactElement.React" : "React",
    "StyleProp" : "CSS",
    "ScrollViewProps" : "(Record ScrollViewProps)"
  }

export const ignoreForeignDataList: string[] =
  [ "Array", "CSS", "Date", "Element.JSX", "JSDate", "JSX", "StyleProp", "(Record ScrollViewProps)", "ReactElement.React" ]

export const noChildren: string[] =
  [ "ButtonProps" ]
