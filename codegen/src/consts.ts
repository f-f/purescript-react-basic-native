export const fieldTypeNameReplacements: {[key:string]:string;} = 
  { "Date" : "JSDate",
    "Element.JSX" : "JSX",
    "ItemT" : "itemT",
    "ReactElement.React" : "React",
    "SectionT" : "sectionT",
    "StyleProp" : "CSS",
    "ScrollViewProps" : "(Record ScrollViewProps)",
    "(ComponentType.React Foreign)" : "JSX",
    "ReadonlyArray" : "Array",
    "IndexSignature": "(Object Foreign)",
    "Object": "(Object Foreign)",
    "ObjectType": "(Object Foreign)",
    "Any": "Foreign"
  }

export const ignoreForeignDataList: string[] =
  [ "Array", "CSS", "Date", "Element.JSX", "JSDate", "JSX", "StyleProp", "(Record ScrollViewProps)", "ReactElement.React", "iTemT", "itemT", "ComponentType.React", "Any", "(Object Foreign)", "NativeSynteticEvent" ]

export const noChildren: string[] =
  [ "button" ]
