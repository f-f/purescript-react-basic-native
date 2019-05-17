module React.Basic.Native.Generated where

type DocumentSelectionStateRow  = 
  ( 
  )


documentSelectionState
  :: ∀ attrs attrs_  
  . Union attrs attrs_ (DocumentSelectionStateRow  )
  => Record attrs
  -> DocumentSelectionState 
  documentSelectionState = unsafeCoerce
 


type ImageURISourceRow  = 
  ( body :: String
  , bundle :: String
  , cache :: String
  , headers :: IndexSignature
  , height :: Number
  , method :: String
  , scale :: Number
  , uri :: String
  , width :: Number
  )


imageURISource
  :: ∀ attrs attrs_  
  . Union attrs attrs_ (ImageURISourceRow  )
  => Record attrs
  -> ImageURISource 
  imageURISource = unsafeCoerce
 


type InsetsRow  = 
  ( bottom :: Number
  , left :: Number
  , right :: Number
  , top :: Number
  )


insets
  :: ∀ attrs attrs_  
  . Union attrs attrs_ (InsetsRow  )
  => Record attrs
  -> Insets 
  insets = unsafeCoerce
 


type ListRenderItemInfo_optional itemT = 
  ( 
  )

type ListRenderItemInfo_required optional itemT = 
  ( index :: Number
  , item :: itemT
  , separators :: { highlight :: (Effect Unit), unhighlight :: (Effect Unit), updateProps :: (EffectFn2 String Any Unit) }
  | optional
  )


listRenderItemInfo
  :: ∀ attrs attrs_ itemT 
  . Union attrs attrs_ ListRenderItemInfo_optional
  => Record ((ListRenderItemInfo_required itemT ) attrs)
  -> ListRenderItemInfo
  listRenderItemInfo = unsafeCoerce


type ListViewDataSourceRow  = 
  ( 
  )


listViewDataSource
  :: ∀ attrs attrs_  
  . Union attrs attrs_ (ListViewDataSourceRow  )
  => Record attrs
  -> ListViewDataSource 
  listViewDataSource = unsafeCoerce
 


type MapViewAnnotation_optional  = 
  ( animateDrop :: Boolean
  , detailCalloutView :: JSX
  , draggable :: Boolean
  , hasLeftCallout :: Boolean
  , hasRightCallout :: Boolean
  , id :: String
  , image :: ImageURISource
  , leftCalloutView :: JSX
  , onBlur :: (Effect Any)
  , onDragStateChange :: (Effect Any)
  , onFocus :: (Effect Any)
  , onLeftCalloutPress :: (Effect Unit)
  , onRightCalloutPress :: (Effect Unit)
  , rightCalloutView :: JSX
  , subtitle :: String
  , tintColor :: String
  , title :: String
  , view :: JSX
  )

type MapViewAnnotation_required optional  = 
  ( latitude :: Number
  , longitude :: Number
  | optional
  )


mapViewAnnotation
  :: ∀ attrs attrs_  
  . Union attrs attrs_ MapViewAnnotation_optional
  => Record ((MapViewAnnotation_required  ) attrs)
  -> MapViewAnnotation
  mapViewAnnotation = unsafeCoerce


type MapViewOverlay_optional  = 
  ( fillColor :: String
  , id :: String
  , lineWidth :: Number
  , strokeColor :: String
  )

type MapViewOverlay_required optional  = 
  ( coordinates :: (Array ({ latitude :: Number, longitude :: Number }))
  | optional
  )


mapViewOverlay
  :: ∀ attrs attrs_  
  . Union attrs attrs_ MapViewOverlay_optional
  => Record ((MapViewOverlay_required  ) attrs)
  -> MapViewOverlay
  mapViewOverlay = unsafeCoerce


type MapViewRegion_optional  = 
  ( latitudeDelta :: Number
  , longitudeDelta :: Number
  )

type MapViewRegion_required optional  = 
  ( latitude :: Number
  , longitude :: Number
  | optional
  )


mapViewRegion
  :: ∀ attrs attrs_  
  . Union attrs attrs_ MapViewRegion_optional
  => Record ((MapViewRegion_required  ) attrs)
  -> MapViewRegion
  mapViewRegion = unsafeCoerce


type NavStateRow  = 
  ( canGoBack :: Boolean
  , canGoForward :: Boolean
  , loading :: Boolean
  , title :: String
  , url :: String
  )


navState
  :: ∀ attrs attrs_  
  . Union attrs attrs_ (NavStateRow  )
  => Record attrs
  -> NavState 
  navState = unsafeCoerce
 


type PointPropType_optional  = 
  ( 
  )

type PointPropType_required optional  = 
  ( x :: Number
  , y :: Number
  | optional
  )


pointPropType
  :: ∀ attrs attrs_  
  . Union attrs attrs_ PointPropType_optional
  => Record ((PointPropType_required  ) attrs)
  -> PointPropType
  pointPropType = unsafeCoerce


type RouteRow  = 
  ( backButtonTitle :: String
  , component :: JSX
  , content :: String
  , id :: String
  , index :: Number
  , message :: String
  , onRightButtonPress :: (Effect Unit)
  , passProps :: Object
  , rightButtonTitle :: String
  , title :: String
  , wrapperStyle :: Any
  )


route
  :: ∀ attrs attrs_  
  . Union attrs attrs_ (RouteRow  )
  => Record attrs
  -> Route 
  route = unsafeCoerce
 


type SwipeableListViewDataSourceRow  = 
  ( 
  )


swipeableListViewDataSource
  :: ∀ attrs attrs_  
  . Union attrs attrs_ (SwipeableListViewDataSourceRow  )
  => Record attrs
  -> SwipeableListViewDataSource 
  swipeableListViewDataSource = unsafeCoerce
 


type ViewToken_optional  = 
  ( section :: Any
  )

type ViewToken_required optional  = 
  ( index :: String
  , isViewable :: Boolean
  , item :: Any
  , key :: String
  | optional
  )


viewToken
  :: ∀ attrs attrs_  
  . Union attrs attrs_ ViewToken_optional
  => Record ((ViewToken_required  ) attrs)
  -> ViewToken
  viewToken = unsafeCoerce


type ViewabilityConfigCallbackPair_optional  = 
  ( 
  )

type ViewabilityConfigCallbackPair_required optional  = 
  ( onViewableItemsChanged :: ((EffectFn1 { viewableItems :: (Array ViewToken), changed :: (Array ViewToken) } Unit))
  , viewabilityConfig :: ViewabilityConfig
  | optional
  )


viewabilityConfigCallbackPair
  :: ∀ attrs attrs_  
  . Union attrs attrs_ ViewabilityConfigCallbackPair_optional
  => Record ((ViewabilityConfigCallbackPair_required  ) attrs)
  -> ViewabilityConfigCallbackPair
  viewabilityConfigCallbackPair = unsafeCoerce


type WebViewNativeConfigRow  = 
  ( component :: Any
  , props :: ObjectType
  , viewManager :: ObjectType
  )


webViewNativeConfig
  :: ∀ attrs attrs_  
  . Union attrs attrs_ (WebViewNativeConfigRow  )
  => Record attrs
  -> WebViewNativeConfig 
  webViewNativeConfig = unsafeCoerce
 


