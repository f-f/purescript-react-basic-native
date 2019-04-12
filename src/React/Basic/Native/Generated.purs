-- | ----------------------------------------
-- | THIS FILE IS GENERATED -- DO NOT EDIT IT
-- | ----------------------------------------

module React.Basic.Native.Generated where

import Prelude

import Data.JSDate (JSDate)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, EffectFn4)
import Prim.Row (class Union)
import React.Basic (JSX)
import React.Basic.DOM.Internal (CSS)
import React.Basic.Events (EventHandler)
import React.Basic.Native.Internal (unsafeCreateNativeElement)


foreign import data ARTRenderableMixinStrokeCap :: Type
foreign import data ARTRenderableMixinStrokeJoin :: Type
foreign import data AccessibilityPropsAndroidAccessibilityComponentType :: Type
foreign import data AccessibilityPropsAndroidAccessibilityLiveRegion :: Type
foreign import data AccessibilityPropsAndroidImportantForAccessibility :: Type
foreign import data AccessibilityPropsIOSAccessibilityTraits :: Type
foreign import data AccessibilityRole :: Type
foreign import data AccessibilityState :: Type
foreign import data ActivityIndicatorIOSPropsSize :: Type
foreign import data ActivityIndicatorPropsSize :: Type
foreign import data Any :: Type
foreign import data BackgroundPropType :: Type
foreign import data DatePickerIOSPropsMinuteInterval :: Type
foreign import data DatePickerIOSPropsMode :: Type
foreign import data DocumentSelectionState :: Type
foreign import data DrawerLayoutAndroidPropsDrawerLockMode :: Type
foreign import data DrawerLayoutAndroidPropsKeyboardDismissMode :: Type
foreign import data FlatListPropsData :: Type
foreign import data FlatListPropsGetItemLayout :: Type
foreign import data FlatListPropsItemSeparatorComponent :: Type
foreign import data FlatListPropsKeyboardShouldPersistTaps :: Type
foreign import data FlatListPropsListEmptyComponent :: Type
foreign import data FlatListPropsListFooterComponent :: Type
foreign import data FlatListPropsListHeaderComponent :: Type
foreign import data FlatListPropsOnEndReached :: Type
foreign import data FlatListPropsOnEndReachedThreshold :: Type
foreign import data FlatListPropsOnRefresh :: Type
foreign import data FlatListPropsOnViewableItemsChanged :: Type
foreign import data FlatListPropsRefreshing :: Type
foreign import data GestureResponderEvent :: Type
foreign import data ImagePropsBaseDefaultSource :: Type
foreign import data ImagePropsBaseResizeMethod :: Type
foreign import data ImageResizeMode :: Type
foreign import data ImageSourcePropType :: Type
foreign import data ImageURISource :: Type
foreign import data IndexSignature :: Type
foreign import data Insets :: Type
foreign import data ItemT :: Type
foreign import data KeyboardAvoidingViewPropsBehavior :: Type
foreign import data KeyboardTypeOptions :: Type
foreign import data ListRenderItem :: Type
foreign import data ListViewDataSource :: Type
foreign import data MapViewAnnotation :: Type
foreign import data MapViewOverlay :: Type
foreign import data MapViewPropsMapType :: Type
foreign import data MapViewRegion :: Type
foreign import data NativeSyntheticEvent :: Type
foreign import data PickerPropsAndroidMode :: Type
foreign import data PointPropType :: Type
foreign import data ProgressBarAndroidPropsStyleAttr :: Type
foreign import data ProgressViewIOSPropsProgressImage :: Type
foreign import data ProgressViewIOSPropsProgressViewStyle :: Type
foreign import data ProgressViewIOSPropsTrackImage :: Type
foreign import data ReturnKeyTypeOptions :: Type
foreign import data Route :: Type
foreign import data ScrollViewPropsAndroidOverScrollMode :: Type
foreign import data ScrollViewPropsIOSContentInsetAdjustmentBehavior :: Type
foreign import data ScrollViewPropsIOSDecelerationRate :: Type
foreign import data ScrollViewPropsIOSIndicatorStyle :: Type
foreign import data ScrollViewPropsIOSSnapToAlignment :: Type
foreign import data ScrollViewPropsKeyboardDismissMode :: Type
foreign import data ScrollViewPropsKeyboardShouldPersistTaps :: Type
foreign import data StatusBarPropsIOSShowHideTransition :: Type
foreign import data StatusBarStyle :: Type
foreign import data SwipeableListViewDataSource :: Type
foreign import data TabBarIOSItemPropsSystemIcon :: Type
foreign import data TabBarIOSPropsItemPositioning :: Type
foreign import data TextInputAndroidPropsTextBreakStrategy :: Type
foreign import data TextInputIOSPropsClearButtonMode :: Type
foreign import data TextInputIOSPropsDataDetectorTypes :: Type
foreign import data TextInputIOSPropsKeyboardAppearance :: Type
foreign import data TextInputIOSPropsTextContentType :: Type
foreign import data TextInputPropsAutoCapitalize :: Type
foreign import data TextPropsAndroidTextBreakStrategy :: Type
foreign import data TextPropsEllipsizeMode :: Type
foreign import data TextPropsLineBreakMode :: Type
foreign import data ToolbarAndroidAction :: Type
foreign import data ViewPagerAndroidPropsKeyboardDismissMode :: Type
foreign import data ViewPagerAndroidPropsOnPageScrollStateChanged :: Type
foreign import data ViewPropsPointerEvents :: Type
foreign import data ViewabilityConfigCallbackPairs :: Type
foreign import data WebViewIOSLoadRequestEvent :: Type
foreign import data WebViewNativeConfig :: Type
foreign import data WebViewPropsAndroidMixedContentMode :: Type
foreign import data WebViewPropsIOSDataDetectorTypes :: Type
foreign import data WebViewPropsIOSDecelerationRate :: Type
foreign import data WebViewPropsSource :: Type 


type ARTClippingRectangleProps = 
  ( key :: String
  , height :: Number
  , opacity :: Number
  , originX :: Number
  , originY :: Number
  , scale :: Number
  , scaleX :: Number
  , scaleY :: Number
  , title :: String
  , visible :: Boolean
  , width :: Number
  , x :: Number
  , y :: Number
  , children :: Array JSX
  )


clippingRectangle
  :: ∀ attrs attrs_
  . Union attrs attrs_ ARTClippingRectangleProps
  => Record attrs
  -> JSX
clippingRectangle props = unsafeCreateNativeElement "ClippingRectangle" props

clippingRectangle_ :: Array JSX -> JSX
clippingRectangle_ children = clippingRectangle { children }


type ARTGroupProps = 
  ( key :: String
  , height :: Number
  , opacity :: Number
  , originX :: Number
  , originY :: Number
  , scale :: Number
  , scaleX :: Number
  , scaleY :: Number
  , title :: String
  , visible :: Boolean
  , width :: Number
  , x :: Number
  , y :: Number
  , children :: Array JSX
  )


group
  :: ∀ attrs attrs_
  . Union attrs attrs_ ARTGroupProps
  => Record attrs
  -> JSX
group props = unsafeCreateNativeElement "Group" props

group_ :: Array JSX -> JSX
group_ children = group { children }


type ARTShapeProps_optional = 
  ( key :: String
  , fill :: String
  , height :: Number
  , opacity :: Number
  , originX :: Number
  , originY :: Number
  , scale :: Number
  , scaleX :: Number
  , scaleY :: Number
  , stroke :: String
  , strokeCap :: ARTRenderableMixinStrokeCap
  , strokeDash :: (Array Number)
  , strokeJoin :: ARTRenderableMixinStrokeJoin
  , strokeWidth :: Number
  , title :: String
  , visible :: Boolean
  , width :: Number
  , x :: Number
  , y :: Number
  , children :: Array JSX
  )

type ARTShapeProps_required optional = 
  ( d :: String
  | optional
  )


shape
  :: ∀ attrs attrs_
  . Union attrs attrs_ ARTShapeProps_optional
  => Record (ARTShapeProps_required attrs)
  -> JSX
shape props = unsafeCreateNativeElement "Shape" props


type ARTSurfaceProps_optional = 
  ( key :: String
  , style :: CSS
  , children :: Array JSX
  )

type ARTSurfaceProps_required optional = 
  ( height :: Number
  , width :: Number
  | optional
  )


surface
  :: ∀ attrs attrs_
  . Union attrs attrs_ ARTSurfaceProps_optional
  => Record (ARTSurfaceProps_required attrs)
  -> JSX
surface props = unsafeCreateNativeElement "Surface" props


type ARTTextProps = 
  ( key :: String
  , alignment :: String
  , fill :: String
  , font :: String
  , opacity :: Number
  , originX :: Number
  , originY :: Number
  , scale :: Number
  , scaleX :: Number
  , scaleY :: Number
  , stroke :: String
  , strokeCap :: ARTRenderableMixinStrokeCap
  , strokeDash :: (Array Number)
  , strokeJoin :: ARTRenderableMixinStrokeJoin
  , strokeWidth :: Number
  , title :: String
  , visible :: Boolean
  , x :: Number
  , y :: Number
  , children :: Array JSX
  )


aRTText
  :: ∀ attrs attrs_
  . Union attrs attrs_ ARTTextProps
  => Record attrs
  -> JSX
aRTText props = unsafeCreateNativeElement "ARTText" props

aRTText_ :: Array JSX -> JSX
aRTText_ children = aRTText { children }


type ActivityIndicatorIOSProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , animating :: Boolean
  , collapsable :: Boolean
  , color :: String
  , hidesWhenStopped :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , size :: ActivityIndicatorIOSPropsSize
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )


activityIndicatorIOS
  :: ∀ attrs attrs_
  . Union attrs attrs_ ActivityIndicatorIOSProps
  => Record attrs
  -> JSX
activityIndicatorIOS props = unsafeCreateNativeElement "ActivityIndicatorIOS" props

activityIndicatorIOS_ :: Array JSX -> JSX
activityIndicatorIOS_ children = activityIndicatorIOS { children }


type ActivityIndicatorProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , animating :: Boolean
  , collapsable :: Boolean
  , color :: String
  , hidesWhenStopped :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , size :: ActivityIndicatorPropsSize
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )


activityIndicator
  :: ∀ attrs attrs_
  . Union attrs attrs_ ActivityIndicatorProps
  => Record attrs
  -> JSX
activityIndicator props = unsafeCreateNativeElement "ActivityIndicator" props

activityIndicator_ :: Array JSX -> JSX
activityIndicator_ children = activityIndicator { children }


type ButtonProps_optional = 
  ( key :: String
  , accessibilityLabel :: String
  , color :: String
  , disabled :: Boolean
  , testID :: String
  )

type ButtonProps_required optional = 
  ( onPress :: EventHandler
  , title :: String
  | optional
  )


button
  :: ∀ attrs attrs_
  . Union attrs attrs_ ButtonProps_optional
  => Record (ButtonProps_required attrs)
  -> JSX
button props = unsafeCreateNativeElement "Button" props


type DatePickerIOSProps_optional = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , locale :: String
  , maximumDate :: JSDate
  , minimumDate :: JSDate
  , minuteInterval :: DatePickerIOSPropsMinuteInterval
  , mode :: DatePickerIOSPropsMode
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , timeZoneOffsetInMinutes :: Number
  , children :: Array JSX
  )

type DatePickerIOSProps_required optional = 
  ( date :: JSDate
  , onDateChange :: (EffectFn1 JSDate Unit)
  | optional
  )


datePickerIOS
  :: ∀ attrs attrs_
  . Union attrs attrs_ DatePickerIOSProps_optional
  => Record (DatePickerIOSProps_required attrs)
  -> JSX
datePickerIOS props = unsafeCreateNativeElement "DatePickerIOS" props


type DrawerLayoutAndroidProps_optional = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , drawerBackgroundColor :: String
  , drawerLockMode :: DrawerLayoutAndroidPropsDrawerLockMode
  , drawerPosition :: Number
  , drawerWidth :: Number
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , keyboardDismissMode :: DrawerLayoutAndroidPropsKeyboardDismissMode
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onDrawerClose :: (Effect Unit)
  , onDrawerOpen :: (Effect Unit)
  , onDrawerSlide :: EventHandler
  , onDrawerStateChanged :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , statusBarBackgroundColor :: String
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )

type DrawerLayoutAndroidProps_required optional = 
  ( renderNavigationView :: (Effect JSX)
  | optional
  )


drawerLayoutAndroid
  :: ∀ attrs attrs_
  . Union attrs attrs_ DrawerLayoutAndroidProps_optional
  => Record (DrawerLayoutAndroidProps_required attrs)
  -> JSX
drawerLayoutAndroid props = unsafeCreateNativeElement "DrawerLayoutAndroid" props


type FlatListProps_optional = 
  ( key :: String
  , "ItemSeparatorComponent" :: FlatListPropsItemSeparatorComponent
  , "ListEmptyComponent" :: FlatListPropsListEmptyComponent
  , "ListFooterComponent" :: FlatListPropsListFooterComponent
  , "ListHeaderComponent" :: FlatListPropsListHeaderComponent
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , alwaysBounceHorizontal :: Boolean
  , alwaysBounceVertical :: Boolean
  , automaticallyAdjustContentInsets :: Boolean
  , bounces :: Boolean
  , bouncesZoom :: Boolean
  , canCancelContentTouches :: Boolean
  , centerContent :: Boolean
  , collapsable :: Boolean
  , columnWrapperStyle :: CSS
  , contentContainerStyle :: CSS
  , contentInset :: Insets
  , contentInsetAdjustmentBehavior :: ScrollViewPropsIOSContentInsetAdjustmentBehavior
  , contentOffset :: PointPropType
  , debug :: Boolean
  , decelerationRate :: ScrollViewPropsIOSDecelerationRate
  , directionalLockEnabled :: Boolean
  , disableVirtualization :: Boolean
  , endFillColor :: String
  , extraData :: Any
  , getItem :: (EffectFn2 Any Number ItemT)
  , getItemCount :: (EffectFn1 Any Number)
  , getItemLayout :: (EffectFn2 FlatListPropsGetItemLayout Number { length :: Number, offset :: Number, index :: Number })
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , indicatorStyle :: ScrollViewPropsIOSIndicatorStyle
  , initialNumToRender :: Number
  , initialScrollIndex :: Number
  , invertStickyHeaders :: Boolean
  , inverted :: Boolean
  , keyExtractor :: (EffectFn2 ItemT Number String)
  , keyboardDismissMode :: ScrollViewPropsKeyboardDismissMode
  , keyboardShouldPersistTaps :: FlatListPropsKeyboardShouldPersistTaps
  , legacyImplementation :: Boolean
  , listKey :: String
  , maxToRenderPerBatch :: Number
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , nestedScrollEnabled :: Boolean
  , numColumns :: Number
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onEndReached :: FlatListPropsOnEndReached
  , onEndReachedThreshold :: FlatListPropsOnEndReachedThreshold
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMomentumScrollBegin :: EventHandler
  , onMomentumScrollEnd :: EventHandler
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onRefresh :: FlatListPropsOnRefresh
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onScroll :: EventHandler
  , onScrollAnimationEnd :: (Effect Unit)
  , onScrollBeginDrag :: EventHandler
  , onScrollEndDrag :: EventHandler
  , onScrollToIndexFailed :: (EffectFn1 { index :: Number, highestMeasuredFrameIndex :: Number, averageItemLength :: Number } Unit)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onViewableItemsChanged :: FlatListPropsOnViewableItemsChanged
  , overScrollMode :: ScrollViewPropsAndroidOverScrollMode
  , pagingEnabled :: Boolean
  , pinchGestureEnabled :: Boolean
  , pointerEvents :: ViewPropsPointerEvents
  , progressViewOffset :: Number
  , refreshControl :: JSX
  , refreshing :: FlatListPropsRefreshing
  , removeClippedSubviews :: Boolean
  , renderScrollComponent :: (EffectFn1 (Record ScrollViewProps) JSX)
  , renderToHardwareTextureAndroid :: Boolean
  , scrollEnabled :: Boolean
  , scrollEventThrottle :: Number
  , scrollIndicatorInsets :: Insets
  , scrollPerfTag :: String
  , scrollsToTop :: Boolean
  , shouldRasterizeIOS :: Boolean
  , showsHorizontalScrollIndicator :: Boolean
  , showsVerticalScrollIndicator :: Boolean
  , snapToAlignment :: ScrollViewPropsIOSSnapToAlignment
  , snapToInterval :: Number
  , stickyHeaderIndices :: (Array Number)
  , style :: CSS
  , testID :: String
  , updateCellsBatchingPeriod :: Number
  , viewabilityConfig :: Any
  , viewabilityConfigCallbackPairs :: ViewabilityConfigCallbackPairs
  , windowSize :: Number
  , zoomScale :: Number
  , children :: Array JSX
  )

type FlatListProps_required optional = 
  ( data :: FlatListPropsData
  , renderItem :: ListRenderItem
  | optional
  )


flatList
  :: ∀ attrs attrs_
  . Union attrs attrs_ FlatListProps_optional
  => Record (FlatListProps_required attrs)
  -> JSX
flatList props = unsafeCreateNativeElement "FlatList" props


type ImageBackgroundProps_optional = 
  ( key :: String
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessible :: Boolean
  , blurRadius :: Number
  , borderBottomLeftRadius :: Number
  , borderBottomRightRadius :: Number
  , borderRadius :: Number
  , borderTopLeftRadius :: Number
  , borderTopRightRadius :: Number
  , capInsets :: Insets
  , defaultSource :: ImagePropsBaseDefaultSource
  , fadeDuration :: Number
  , height :: Number
  , imageStyle :: CSS
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , loadingIndicatorSource :: ImageURISource
  , onAccessibilityTap :: (Effect Unit)
  , onError :: (EffectFn1 NativeSyntheticEvent Unit)
  , onLayout :: EventHandler
  , onLoad :: EventHandler
  , onLoadEnd :: (Effect Unit)
  , onLoadStart :: (Effect Unit)
  , onMagicTap :: (Effect Unit)
  , onPartialLoad :: (Effect Unit)
  , onProgress :: EventHandler
  , progressiveRenderingEnabled :: Boolean
  , resizeMethod :: ImagePropsBaseResizeMethod
  , resizeMode :: ImageResizeMode
  , style :: CSS
  , testID :: String
  , width :: Number
  , children :: Array JSX
  )

type ImageBackgroundProps_required optional = 
  ( source :: ImageSourcePropType
  | optional
  )


imageBackground
  :: ∀ attrs attrs_
  . Union attrs attrs_ ImageBackgroundProps_optional
  => Record (ImageBackgroundProps_required attrs)
  -> JSX
imageBackground props = unsafeCreateNativeElement "ImageBackground" props


type ImageProps_optional = 
  ( key :: String
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessible :: Boolean
  , blurRadius :: Number
  , borderBottomLeftRadius :: Number
  , borderBottomRightRadius :: Number
  , borderRadius :: Number
  , borderTopLeftRadius :: Number
  , borderTopRightRadius :: Number
  , capInsets :: Insets
  , defaultSource :: ImagePropsBaseDefaultSource
  , fadeDuration :: Number
  , height :: Number
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , loadingIndicatorSource :: ImageURISource
  , onAccessibilityTap :: (Effect Unit)
  , onError :: (EffectFn1 NativeSyntheticEvent Unit)
  , onLayout :: EventHandler
  , onLoad :: EventHandler
  , onLoadEnd :: (Effect Unit)
  , onLoadStart :: (Effect Unit)
  , onMagicTap :: (Effect Unit)
  , onPartialLoad :: (Effect Unit)
  , onProgress :: EventHandler
  , progressiveRenderingEnabled :: Boolean
  , resizeMethod :: ImagePropsBaseResizeMethod
  , resizeMode :: ImageResizeMode
  , style :: CSS
  , testID :: String
  , width :: Number
  , children :: Array JSX
  )

type ImageProps_required optional = 
  ( source :: ImageSourcePropType
  | optional
  )


image
  :: ∀ attrs attrs_
  . Union attrs attrs_ ImageProps_optional
  => Record (ImageProps_required attrs)
  -> JSX
image props = unsafeCreateNativeElement "Image" props


type InputAccessoryViewProps = 
  ( key :: String
  , backgroundColor :: String
  , nativeID :: String
  , style :: CSS
  , children :: Array JSX
  )


inputAccessoryView
  :: ∀ attrs attrs_
  . Union attrs attrs_ InputAccessoryViewProps
  => Record attrs
  -> JSX
inputAccessoryView props = unsafeCreateNativeElement "InputAccessoryView" props

inputAccessoryView_ :: Array JSX -> JSX
inputAccessoryView_ children = inputAccessoryView { children }


type KeyboardAvoidingViewProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , behavior :: KeyboardAvoidingViewPropsBehavior
  , collapsable :: Boolean
  , contentContainerStyle :: CSS
  , enabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , keyboardVerticalOffset :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )


keyboardAvoidingView
  :: ∀ attrs attrs_
  . Union attrs attrs_ KeyboardAvoidingViewProps
  => Record attrs
  -> JSX
keyboardAvoidingView props = unsafeCreateNativeElement "KeyboardAvoidingView" props

keyboardAvoidingView_ :: Array JSX -> JSX
keyboardAvoidingView_ children = keyboardAvoidingView { children }


type ListViewProps_optional = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , alwaysBounceHorizontal :: Boolean
  , alwaysBounceVertical :: Boolean
  , automaticallyAdjustContentInsets :: Boolean
  , bounces :: Boolean
  , bouncesZoom :: Boolean
  , canCancelContentTouches :: Boolean
  , centerContent :: Boolean
  , collapsable :: Boolean
  , contentContainerStyle :: CSS
  , contentInset :: Insets
  , contentInsetAdjustmentBehavior :: ScrollViewPropsIOSContentInsetAdjustmentBehavior
  , contentOffset :: PointPropType
  , decelerationRate :: ScrollViewPropsIOSDecelerationRate
  , directionalLockEnabled :: Boolean
  , enableEmptySections :: Boolean
  , endFillColor :: String
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , indicatorStyle :: ScrollViewPropsIOSIndicatorStyle
  , initialListSize :: Number
  , invertStickyHeaders :: Boolean
  , keyboardDismissMode :: ScrollViewPropsKeyboardDismissMode
  , keyboardShouldPersistTaps :: ScrollViewPropsKeyboardShouldPersistTaps
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , nestedScrollEnabled :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onChangeVisibleRows :: (EffectFn2 (Array IndexSignature) (Array IndexSignature) Unit)
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onEndReached :: (Effect Unit)
  , onEndReachedThreshold :: Number
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMomentumScrollBegin :: EventHandler
  , onMomentumScrollEnd :: EventHandler
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onScroll :: EventHandler
  , onScrollAnimationEnd :: (Effect Unit)
  , onScrollBeginDrag :: EventHandler
  , onScrollEndDrag :: EventHandler
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , overScrollMode :: ScrollViewPropsAndroidOverScrollMode
  , pageSize :: Number
  , pagingEnabled :: Boolean
  , pinchGestureEnabled :: Boolean
  , pointerEvents :: ViewPropsPointerEvents
  , refreshControl :: JSX
  , removeClippedSubviews :: Boolean
  , renderFooter :: (Effect JSX)
  , renderHeader :: (Effect JSX)
  , renderScrollComponent :: (EffectFn1 (Record ScrollViewProps) JSX)
  , renderSectionHeader :: (EffectFn2 Any String JSX)
  , renderSeparator :: (EffectFn3 String String Boolean JSX)
  , renderToHardwareTextureAndroid :: Boolean
  , scrollEnabled :: Boolean
  , scrollEventThrottle :: Number
  , scrollIndicatorInsets :: Insets
  , scrollPerfTag :: String
  , scrollRenderAheadDistance :: Number
  , scrollsToTop :: Boolean
  , shouldRasterizeIOS :: Boolean
  , showsHorizontalScrollIndicator :: Boolean
  , showsVerticalScrollIndicator :: Boolean
  , snapToAlignment :: ScrollViewPropsIOSSnapToAlignment
  , snapToInterval :: Number
  , stickyHeaderIndices :: (Array Number)
  , stickySectionHeadersEnabled :: Boolean
  , style :: CSS
  , testID :: String
  , zoomScale :: Number
  , children :: Array JSX
  )

type ListViewProps_required optional = 
  ( dataSource :: ListViewDataSource
  , renderRow :: (EffectFn4 Any String String Boolean JSX)
  | optional
  )


listView
  :: ∀ attrs attrs_
  . Union attrs attrs_ ListViewProps_optional
  => Record (ListViewProps_required attrs)
  -> JSX
listView props = unsafeCreateNativeElement "ListView" props


type MapViewProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , annotations :: (Array MapViewAnnotation)
  , collapsable :: Boolean
  , followUserLocation :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , legalLabelInsets :: Insets
  , mapType :: MapViewPropsMapType
  , maxDelta :: Number
  , minDelta :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onAnnotationPress :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onRegionChange :: (EffectFn1 MapViewRegion Unit)
  , onRegionChangeComplete :: (EffectFn1 MapViewRegion Unit)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , overlays :: (Array MapViewOverlay)
  , pitchEnabled :: Boolean
  , pointerEvents :: ViewPropsPointerEvents
  , region :: MapViewRegion
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , rotateEnabled :: Boolean
  , scrollEnabled :: Boolean
  , shouldRasterizeIOS :: Boolean
  , showsCompass :: Boolean
  , showsPointsOfInterest :: Boolean
  , showsUserLocation :: Boolean
  , style :: CSS
  , testID :: String
  , zoomEnabled :: Boolean
  , children :: Array JSX
  )


mapView
  :: ∀ attrs attrs_
  . Union attrs attrs_ MapViewProps
  => Record attrs
  -> JSX
mapView props = unsafeCreateNativeElement "MapView" props

mapView_ :: Array JSX -> JSX
mapView_ children = mapView { children }


type MaskedViewIOSProps_optional = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )

type MaskedViewIOSProps_required optional = 
  ( maskElement :: JSX
  | optional
  )


maskedView
  :: ∀ attrs attrs_
  . Union attrs attrs_ MaskedViewIOSProps_optional
  => Record (MaskedViewIOSProps_required attrs)
  -> JSX
maskedView props = unsafeCreateNativeElement "MaskedView" props


type NavigatorIOSProps_optional = 
  ( key :: String
  , barTintColor :: String
  , interactivePopGestureEnabled :: Boolean
  , itemWrapperStyle :: CSS
  , navigationBarHidden :: Boolean
  , shadowHidden :: Boolean
  , style :: CSS
  , tintColor :: String
  , titleTextColor :: String
  , translucent :: Boolean
  , children :: Array JSX
  )

type NavigatorIOSProps_required optional = 
  ( initialRoute :: Route
  | optional
  )


navigatorIOS
  :: ∀ attrs attrs_
  . Union attrs attrs_ NavigatorIOSProps_optional
  => Record (NavigatorIOSProps_required attrs)
  -> JSX
navigatorIOS props = unsafeCreateNativeElement "NavigatorIOS" props


type PickerIOSItemProps = 
  ( key :: String
  , label :: String
  , value :: String
  , children :: Array JSX
  )


pickerIOSItem
  :: ∀ attrs attrs_
  . Union attrs attrs_ PickerIOSItemProps
  => Record attrs
  -> JSX
pickerIOSItem props = unsafeCreateNativeElement "PickerIOSItem" props

pickerIOSItem_ :: Array JSX -> JSX
pickerIOSItem_ children = pickerIOSItem { children }


type PickerIOSProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , itemStyle :: CSS
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onValueChange :: (EffectFn1 String Unit)
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selectedValue :: String
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )


pickerIOS
  :: ∀ attrs attrs_
  . Union attrs attrs_ PickerIOSProps
  => Record attrs
  -> JSX
pickerIOS props = unsafeCreateNativeElement "PickerIOS" props

pickerIOS_ :: Array JSX -> JSX
pickerIOS_ children = pickerIOS { children }


type PickerItemProps_optional = 
  ( key :: String
  , color :: String
  , testID :: String
  , value :: Any
  , children :: Array JSX
  )

type PickerItemProps_required optional = 
  ( label :: String
  | optional
  )


pickerItem
  :: ∀ attrs attrs_
  . Union attrs attrs_ PickerItemProps_optional
  => Record (PickerItemProps_required attrs)
  -> JSX
pickerItem props = unsafeCreateNativeElement "PickerItem" props


type PickerProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , enabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , itemStyle :: CSS
  , mode :: PickerPropsAndroidMode
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onValueChange :: (EffectFn2 Any Number Unit)
  , pointerEvents :: ViewPropsPointerEvents
  , prompt :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selectedValue :: Any
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , testId :: String
  , children :: Array JSX
  )


picker
  :: ∀ attrs attrs_
  . Union attrs attrs_ PickerProps
  => Record attrs
  -> JSX
picker props = unsafeCreateNativeElement "Picker" props

picker_ :: Array JSX -> JSX
picker_ children = picker { children }


type ProgressBarAndroidProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , color :: String
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , indeterminate :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , progress :: Number
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , styleAttr :: ProgressBarAndroidPropsStyleAttr
  , testID :: String
  , children :: Array JSX
  )


progressBarAndroid
  :: ∀ attrs attrs_
  . Union attrs attrs_ ProgressBarAndroidProps
  => Record attrs
  -> JSX
progressBarAndroid props = unsafeCreateNativeElement "ProgressBarAndroid" props

progressBarAndroid_ :: Array JSX -> JSX
progressBarAndroid_ children = progressBarAndroid { children }


type ProgressViewIOSProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , progress :: Number
  , progressImage :: ProgressViewIOSPropsProgressImage
  , progressTintColor :: String
  , progressViewStyle :: ProgressViewIOSPropsProgressViewStyle
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , trackImage :: ProgressViewIOSPropsTrackImage
  , trackTintColor :: String
  , children :: Array JSX
  )


progressViewIOS
  :: ∀ attrs attrs_
  . Union attrs attrs_ ProgressViewIOSProps
  => Record attrs
  -> JSX
progressViewIOS props = unsafeCreateNativeElement "ProgressViewIOS" props

progressViewIOS_ :: Array JSX -> JSX
progressViewIOS_ children = progressViewIOS { children }


type RecyclerViewBackedScrollViewProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , alwaysBounceHorizontal :: Boolean
  , alwaysBounceVertical :: Boolean
  , automaticallyAdjustContentInsets :: Boolean
  , bounces :: Boolean
  , bouncesZoom :: Boolean
  , canCancelContentTouches :: Boolean
  , centerContent :: Boolean
  , collapsable :: Boolean
  , contentContainerStyle :: CSS
  , contentInset :: Insets
  , contentInsetAdjustmentBehavior :: ScrollViewPropsIOSContentInsetAdjustmentBehavior
  , contentOffset :: PointPropType
  , decelerationRate :: ScrollViewPropsIOSDecelerationRate
  , directionalLockEnabled :: Boolean
  , endFillColor :: String
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , indicatorStyle :: ScrollViewPropsIOSIndicatorStyle
  , invertStickyHeaders :: Boolean
  , keyboardDismissMode :: ScrollViewPropsKeyboardDismissMode
  , keyboardShouldPersistTaps :: ScrollViewPropsKeyboardShouldPersistTaps
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , nestedScrollEnabled :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMomentumScrollBegin :: EventHandler
  , onMomentumScrollEnd :: EventHandler
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onScroll :: EventHandler
  , onScrollAnimationEnd :: (Effect Unit)
  , onScrollBeginDrag :: EventHandler
  , onScrollEndDrag :: EventHandler
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , overScrollMode :: ScrollViewPropsAndroidOverScrollMode
  , pagingEnabled :: Boolean
  , pinchGestureEnabled :: Boolean
  , pointerEvents :: ViewPropsPointerEvents
  , refreshControl :: JSX
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , scrollEnabled :: Boolean
  , scrollEventThrottle :: Number
  , scrollIndicatorInsets :: Insets
  , scrollPerfTag :: String
  , scrollsToTop :: Boolean
  , shouldRasterizeIOS :: Boolean
  , showsHorizontalScrollIndicator :: Boolean
  , showsVerticalScrollIndicator :: Boolean
  , snapToAlignment :: ScrollViewPropsIOSSnapToAlignment
  , snapToInterval :: Number
  , stickyHeaderIndices :: (Array Number)
  , style :: CSS
  , testID :: String
  , zoomScale :: Number
  , children :: Array JSX
  )


recyclerViewBackedScrollView
  :: ∀ attrs attrs_
  . Union attrs attrs_ RecyclerViewBackedScrollViewProps
  => Record attrs
  -> JSX
recyclerViewBackedScrollView props = unsafeCreateNativeElement "RecyclerViewBackedScrollView" props

recyclerViewBackedScrollView_ :: Array JSX -> JSX
recyclerViewBackedScrollView_ children = recyclerViewBackedScrollView { children }


type RefreshControlProps_optional = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , colors :: (Array String)
  , enabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onRefresh :: (Effect Unit)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , progressBackgroundColor :: String
  , progressViewOffset :: Number
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , size :: Number
  , style :: CSS
  , testID :: String
  , tintColor :: String
  , title :: String
  , titleColor :: String
  , children :: Array JSX
  )

type RefreshControlProps_required optional = 
  ( refreshing :: Boolean
  | optional
  )


refreshControl
  :: ∀ attrs attrs_
  . Union attrs attrs_ RefreshControlProps_optional
  => Record (RefreshControlProps_required attrs)
  -> JSX
refreshControl props = unsafeCreateNativeElement "RefreshControl" props


type ScrollViewProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , alwaysBounceHorizontal :: Boolean
  , alwaysBounceVertical :: Boolean
  , automaticallyAdjustContentInsets :: Boolean
  , bounces :: Boolean
  , bouncesZoom :: Boolean
  , canCancelContentTouches :: Boolean
  , centerContent :: Boolean
  , collapsable :: Boolean
  , contentContainerStyle :: CSS
  , contentInset :: Insets
  , contentInsetAdjustmentBehavior :: ScrollViewPropsIOSContentInsetAdjustmentBehavior
  , contentOffset :: PointPropType
  , decelerationRate :: ScrollViewPropsIOSDecelerationRate
  , directionalLockEnabled :: Boolean
  , endFillColor :: String
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , indicatorStyle :: ScrollViewPropsIOSIndicatorStyle
  , invertStickyHeaders :: Boolean
  , keyboardDismissMode :: ScrollViewPropsKeyboardDismissMode
  , keyboardShouldPersistTaps :: ScrollViewPropsKeyboardShouldPersistTaps
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , nestedScrollEnabled :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMomentumScrollBegin :: EventHandler
  , onMomentumScrollEnd :: EventHandler
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onScroll :: EventHandler
  , onScrollAnimationEnd :: (Effect Unit)
  , onScrollBeginDrag :: EventHandler
  , onScrollEndDrag :: EventHandler
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , overScrollMode :: ScrollViewPropsAndroidOverScrollMode
  , pagingEnabled :: Boolean
  , pinchGestureEnabled :: Boolean
  , pointerEvents :: ViewPropsPointerEvents
  , refreshControl :: JSX
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , scrollEnabled :: Boolean
  , scrollEventThrottle :: Number
  , scrollIndicatorInsets :: Insets
  , scrollPerfTag :: String
  , scrollsToTop :: Boolean
  , shouldRasterizeIOS :: Boolean
  , showsHorizontalScrollIndicator :: Boolean
  , showsVerticalScrollIndicator :: Boolean
  , snapToAlignment :: ScrollViewPropsIOSSnapToAlignment
  , snapToInterval :: Number
  , stickyHeaderIndices :: (Array Number)
  , style :: CSS
  , testID :: String
  , zoomScale :: Number
  , children :: Array JSX
  )


scrollView
  :: ∀ attrs attrs_
  . Union attrs attrs_ ScrollViewProps
  => Record attrs
  -> JSX
scrollView props = unsafeCreateNativeElement "ScrollView" props

scrollView_ :: Array JSX -> JSX
scrollView_ children = scrollView { children }


type SegmentedControlIOSProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , enabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , momentary :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onChange :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onValueChange :: (EffectFn1 String Unit)
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selectedIndex :: Number
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tintColor :: String
  , values :: (Array String)
  , children :: Array JSX
  )


segmentedControlIOS
  :: ∀ attrs attrs_
  . Union attrs attrs_ SegmentedControlIOSProps
  => Record attrs
  -> JSX
segmentedControlIOS props = unsafeCreateNativeElement "SegmentedControlIOS" props

segmentedControlIOS_ :: Array JSX -> JSX
segmentedControlIOS_ children = segmentedControlIOS { children }


type SliderProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , maximumTrackImage :: ImageURISource
  , maximumTrackTintColor :: String
  , maximumValue :: Number
  , minimumTrackImage :: ImageURISource
  , minimumTrackTintColor :: String
  , minimumValue :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onSlidingComplete :: (EffectFn1 Number Unit)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onValueChange :: (EffectFn1 Number Unit)
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , step :: Number
  , style :: CSS
  , testID :: String
  , thumbImage :: ImageURISource
  , thumbTintColor :: String
  , trackImage :: ImageURISource
  , value :: Number
  , children :: Array JSX
  )


slider
  :: ∀ attrs attrs_
  . Union attrs attrs_ SliderProps
  => Record attrs
  -> JSX
slider props = unsafeCreateNativeElement "Slider" props

slider_ :: Array JSX -> JSX
slider_ children = slider { children }


type SnapshotViewIOSProps_optional = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )

type SnapshotViewIOSProps_required optional = 
  ( testIdentifier :: String
  | optional
  )


snapshotViewIOS
  :: ∀ attrs attrs_
  . Union attrs attrs_ SnapshotViewIOSProps_optional
  => Record (SnapshotViewIOSProps_required attrs)
  -> JSX
snapshotViewIOS props = unsafeCreateNativeElement "SnapshotViewIOS" props


type StatusBarProps = 
  ( key :: String
  , animated :: Boolean
  , backgroundColor :: String
  , barStyle :: StatusBarStyle
  , hidden :: Boolean
  , networkActivityIndicatorVisible :: Boolean
  , showHideTransition :: StatusBarPropsIOSShowHideTransition
  , translucent :: Boolean
  , children :: Array JSX
  )


statusBar
  :: ∀ attrs attrs_
  . Union attrs attrs_ StatusBarProps
  => Record attrs
  -> JSX
statusBar props = unsafeCreateNativeElement "StatusBar" props

statusBar_ :: Array JSX -> JSX
statusBar_ children = statusBar { children }


type SwipeableListViewProps_optional = 
  ( key :: String
  , children :: Array JSX
  )

type SwipeableListViewProps_required optional = 
  ( bounceFirstRowOnMount :: Boolean
  , dataSource :: SwipeableListViewDataSource
  , maxSwipeDistance :: Number
  , renderRow :: (EffectFn4 Any String String Boolean JSX)
  | optional
  )


swipeableListView
  :: ∀ attrs attrs_
  . Union attrs attrs_ SwipeableListViewProps_optional
  => Record (SwipeableListViewProps_required attrs)
  -> JSX
swipeableListView props = unsafeCreateNativeElement "SwipeableListView" props


type SwitchIOSProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTintColor :: String
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onValueChange :: (EffectFn1 Boolean Unit)
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , thumbTintColor :: String
  , tintColor :: String
  , value :: Boolean
  , children :: Array JSX
  )


switchIOS
  :: ∀ attrs attrs_
  . Union attrs attrs_ SwitchIOSProps
  => Record attrs
  -> JSX
switchIOS props = unsafeCreateNativeElement "SwitchIOS" props

switchIOS_ :: Array JSX -> JSX
switchIOS_ children = switchIOS { children }


type SwitchProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , ios_backgroundColor :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTintColor :: String
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onValueChange :: (EffectFn1 Boolean Unit)
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , thumbColor :: String
  , thumbTintColor :: String
  , tintColor :: String
  , trackColor :: { false :: String, true :: String }
  , value :: Boolean
  , children :: Array JSX
  )


switch
  :: ∀ attrs attrs_
  . Union attrs attrs_ SwitchProps
  => Record attrs
  -> JSX
switch props = unsafeCreateNativeElement "Switch" props

switch_ :: Array JSX -> JSX
switch_ children = switch { children }


type TabBarIOSItemProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , badge :: String
  , badgeColor :: String
  , collapsable :: Boolean
  , hitSlop :: Insets
  , icon :: ImageURISource
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onPress :: (Effect Unit)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderAsOriginal :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selected :: Boolean
  , selectedIcon :: ImageURISource
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , systemIcon :: TabBarIOSItemPropsSystemIcon
  , testID :: String
  , title :: String
  , children :: Array JSX
  )


tabBarIOSItem
  :: ∀ attrs attrs_
  . Union attrs attrs_ TabBarIOSItemProps
  => Record attrs
  -> JSX
tabBarIOSItem props = unsafeCreateNativeElement "TabBarIOSItem" props

tabBarIOSItem_ :: Array JSX -> JSX
tabBarIOSItem_ children = tabBarIOSItem { children }


type TabBarIOSProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , barTintColor :: String
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , itemPositioning :: TabBarIOSPropsItemPositioning
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tintColor :: String
  , translucent :: Boolean
  , unselectedItemTintColor :: String
  , unselectedTintColor :: String
  , children :: Array JSX
  )


tabBarIOS
  :: ∀ attrs attrs_
  . Union attrs attrs_ TabBarIOSProps
  => Record attrs
  -> JSX
tabBarIOS props = unsafeCreateNativeElement "TabBarIOS" props

tabBarIOS_ :: Array JSX -> JSX
tabBarIOS_ children = tabBarIOS { children }


type TextInputProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , allowFontScaling :: Boolean
  , autoCapitalize :: TextInputPropsAutoCapitalize
  , autoCorrect :: Boolean
  , autoFocus :: Boolean
  , blurOnSubmit :: Boolean
  , caretHidden :: Boolean
  , clearButtonMode :: TextInputIOSPropsClearButtonMode
  , clearTextOnFocus :: Boolean
  , collapsable :: Boolean
  , contextMenuHidden :: Boolean
  , dataDetectorTypes :: TextInputIOSPropsDataDetectorTypes
  , defaultValue :: String
  , disableFullscreenUI :: Boolean
  , editable :: Boolean
  , enablesReturnKeyAutomatically :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , inlineImageLeft :: String
  , inlineImagePadding :: Number
  , inputAccessoryViewID :: String
  , keyboardAppearance :: TextInputIOSPropsKeyboardAppearance
  , keyboardType :: KeyboardTypeOptions
  , maxLength :: Number
  , multiline :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , numberOfLines :: Number
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onBlur :: EventHandler
  , onChange :: EventHandler
  , onChangeText :: (EffectFn1 String Unit)
  , onContentSizeChange :: EventHandler
  , onEndEditing :: EventHandler
  , onFocus :: EventHandler
  , onKeyPress :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onScroll :: EventHandler
  , onSelectionChange :: EventHandler
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onSubmitEditing :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , placeholder :: String
  , placeholderTextColor :: String
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , returnKeyLabel :: String
  , returnKeyType :: ReturnKeyTypeOptions
  , scrollEnabled :: Boolean
  , secureTextEntry :: Boolean
  , selectTextOnFocus :: Boolean
  , selection :: { start :: Number, end :: Number }
  , selectionColor :: String
  , selectionState :: DocumentSelectionState
  , shouldRasterizeIOS :: Boolean
  , spellCheck :: Boolean
  , style :: CSS
  , testID :: String
  , textBreakStrategy :: TextInputAndroidPropsTextBreakStrategy
  , textContentType :: TextInputIOSPropsTextContentType
  , underlineColorAndroid :: String
  , value :: String
  , children :: Array JSX
  )


textInput
  :: ∀ attrs attrs_
  . Union attrs attrs_ TextInputProps
  => Record attrs
  -> JSX
textInput props = unsafeCreateNativeElement "TextInput" props

textInput_ :: Array JSX -> JSX
textInput_ children = textInput { children }


type TextProps = 
  ( key :: String
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessible :: Boolean
  , adjustsFontSizeToFit :: Boolean
  , allowFontScaling :: Boolean
  , ellipsizeMode :: TextPropsEllipsizeMode
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , lineBreakMode :: TextPropsLineBreakMode
  , minimumFontScale :: Number
  , nativeID :: String
  , numberOfLines :: Number
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onLongPress :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onPress :: EventHandler
  , selectable :: Boolean
  , selectionColor :: String
  , style :: CSS
  , suppressHighlighting :: Boolean
  , testID :: String
  , textBreakStrategy :: TextPropsAndroidTextBreakStrategy
  , children :: Array JSX
  )


text
  :: ∀ attrs attrs_
  . Union attrs attrs_ TextProps
  => Record attrs
  -> JSX
text props = unsafeCreateNativeElement "Text" props

text_ :: Array JSX -> JSX
text_ children = text { children }


type ToolbarAndroidProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , actions :: (Array ToolbarAndroidAction)
  , collapsable :: Boolean
  , contentInsetEnd :: Number
  , contentInsetStart :: Number
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , logo :: ImageURISource
  , nativeID :: String
  , navIcon :: ImageURISource
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onActionSelected :: (EffectFn1 Number Unit)
  , onIconClicked :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , overflowIcon :: ImageURISource
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , rtl :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , subtitle :: String
  , subtitleColor :: String
  , testID :: String
  , title :: String
  , titleColor :: String
  , children :: Array JSX
  )


toolbarAndroid
  :: ∀ attrs attrs_
  . Union attrs attrs_ ToolbarAndroidProps
  => Record attrs
  -> JSX
toolbarAndroid props = unsafeCreateNativeElement "ToolbarAndroid" props

toolbarAndroid_ :: Array JSX -> JSX
toolbarAndroid_ children = toolbarAndroid { children }


type TouchableHighlightProps = 
  ( key :: String
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessible :: Boolean
  , activeOpacity :: Number
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , onAccessibilityTap :: (Effect Unit)
  , onHideUnderlay :: (Effect Unit)
  , onLayout :: EventHandler
  , onLongPress :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onPress :: EventHandler
  , onPressIn :: EventHandler
  , onPressOut :: EventHandler
  , onShowUnderlay :: (Effect Unit)
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  , underlayColor :: String
  , children :: Array JSX
  )


touchableHighlight
  :: ∀ attrs attrs_
  . Union attrs attrs_ TouchableHighlightProps
  => Record attrs
  -> JSX
touchableHighlight props = unsafeCreateNativeElement "TouchableHighlight" props

touchableHighlight_ :: Array JSX -> JSX
touchableHighlight_ children = touchableHighlight { children }


type TouchableNativeFeedbackProps = 
  ( key :: String
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessible :: Boolean
  , background :: BackgroundPropType
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onLongPress :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onPress :: EventHandler
  , onPressIn :: EventHandler
  , onPressOut :: EventHandler
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  , useForeground :: Boolean
  , children :: Array JSX
  )


touchableNativeFeedback
  :: ∀ attrs attrs_
  . Union attrs attrs_ TouchableNativeFeedbackProps
  => Record attrs
  -> JSX
touchableNativeFeedback props = unsafeCreateNativeElement "TouchableNativeFeedback" props

touchableNativeFeedback_ :: Array JSX -> JSX
touchableNativeFeedback_ children = touchableNativeFeedback { children }


type TouchableOpacityProps = 
  ( key :: String
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessible :: Boolean
  , activeOpacity :: Number
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onLongPress :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onPress :: EventHandler
  , onPressIn :: EventHandler
  , onPressOut :: EventHandler
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )


touchableOpacity
  :: ∀ attrs attrs_
  . Union attrs attrs_ TouchableOpacityProps
  => Record attrs
  -> JSX
touchableOpacity props = unsafeCreateNativeElement "TouchableOpacity" props

touchableOpacity_ :: Array JSX -> JSX
touchableOpacity_ children = touchableOpacity { children }


type TouchableWithoutFeedbackProps = 
  ( key :: String
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessible :: Boolean
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onLongPress :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onPress :: EventHandler
  , onPressIn :: EventHandler
  , onPressOut :: EventHandler
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )


touchableWithoutFeedback
  :: ∀ attrs attrs_
  . Union attrs attrs_ TouchableWithoutFeedbackProps
  => Record attrs
  -> JSX
touchableWithoutFeedback props = unsafeCreateNativeElement "TouchableWithoutFeedback" props

touchableWithoutFeedback_ :: Array JSX -> JSX
touchableWithoutFeedback_ children = touchableWithoutFeedback { children }


type ViewPagerAndroidProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , initialPage :: Number
  , keyboardDismissMode :: ViewPagerAndroidPropsKeyboardDismissMode
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onPageScroll :: EventHandler
  , onPageScrollStateChanged :: (EffectFn1 ViewPagerAndroidPropsOnPageScrollStateChanged Unit)
  , onPageSelected :: EventHandler
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pageMargin :: Number
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , scrollEnabled :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )


viewPagerAndroid
  :: ∀ attrs attrs_
  . Union attrs attrs_ ViewPagerAndroidProps
  => Record attrs
  -> JSX
viewPagerAndroid props = unsafeCreateNativeElement "ViewPagerAndroid" props

viewPagerAndroid_ :: Array JSX -> JSX
viewPagerAndroid_ children = viewPagerAndroid { children }


type ViewProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , children :: Array JSX
  )


view
  :: ∀ attrs attrs_
  . Union attrs attrs_ ViewProps
  => Record attrs
  -> JSX
view props = unsafeCreateNativeElement "View" props

view_ :: Array JSX -> JSX
view_ children = view { children }

safeAreaView
  :: ∀ attrs attrs_
  . Union attrs attrs_ ViewProps
  => Record attrs
  -> JSX
safeAreaView props = unsafeCreateNativeElement "SafeAreaView" props

safeAreaView_ :: Array JSX -> JSX
safeAreaView_ children = safeAreaView { children }


type WebViewProps = 
  ( key :: String
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: AccessibilityPropsAndroidAccessibilityComponentType
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: AccessibilityPropsAndroidAccessibilityLiveRegion
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: AccessibilityPropsIOSAccessibilityTraits
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , allowFileAccess :: Boolean
  , allowsInlineMediaPlayback :: Boolean
  , automaticallyAdjustContentInsets :: Boolean
  , bounces :: Boolean
  , collapsable :: Boolean
  , contentInset :: Insets
  , dataDetectorTypes :: WebViewPropsIOSDataDetectorTypes
  , decelerationRate :: WebViewPropsIOSDecelerationRate
  , domStorageEnabled :: Boolean
  , hitSlop :: Insets
  , html :: String
  , importantForAccessibility :: AccessibilityPropsAndroidImportantForAccessibility
  , injectedJavaScript :: String
  , javaScriptEnabled :: Boolean
  , mediaPlaybackRequiresUserAction :: Boolean
  , mixedContentMode :: WebViewPropsAndroidMixedContentMode
  , nativeConfig :: WebViewNativeConfig
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onError :: EventHandler
  , onLayout :: EventHandler
  , onLoad :: EventHandler
  , onLoadEnd :: EventHandler
  , onLoadStart :: EventHandler
  , onMagicTap :: (Effect Unit)
  , onMessage :: EventHandler
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onNavigationStateChange :: EventHandler
  , onResponderEnd :: EventHandler
  , onResponderGrant :: EventHandler
  , onResponderMove :: EventHandler
  , onResponderReject :: EventHandler
  , onResponderRelease :: EventHandler
  , onResponderStart :: EventHandler
  , onResponderTerminate :: EventHandler
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onShouldStartLoadWithRequest :: (EffectFn1 WebViewIOSLoadRequestEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , originWhitelist :: (Array String)
  , pointerEvents :: ViewPropsPointerEvents
  , removeClippedSubviews :: Boolean
  , renderError :: (Effect JSX)
  , renderLoading :: (Effect JSX)
  , renderToHardwareTextureAndroid :: Boolean
  , saveFormDataDisabled :: Boolean
  , scalesPageToFit :: Boolean
  , scrollEnabled :: Boolean
  , shouldRasterizeIOS :: Boolean
  , source :: WebViewPropsSource
  , startInLoadingState :: Boolean
  , style :: CSS
  , testID :: String
  , url :: String
  , useWebKit :: Boolean
  , userAgent :: String
  , children :: Array JSX
  )


webView
  :: ∀ attrs attrs_
  . Union attrs attrs_ WebViewProps
  => Record attrs
  -> JSX
webView props = unsafeCreateNativeElement "WebView" props

webView_ :: Array JSX -> JSX
webView_ children = webView { children }


