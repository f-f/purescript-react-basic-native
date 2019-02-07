-- | ----------------------------------------
-- | THIS FILE IS GENERATED -- DO NOT EDIT IT
-- | ----------------------------------------

module React.Basic.Native.Generated where

import Prelude

import Data.Maybe (Maybe)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, EffectFn4)
import Prim.Row (class Union)
import React.Basic (Component, JSX, element)
import React.Basic.DOM.Internal (CSS)
import React.Basic.Events (EventHandler)
import Unsafe.Coerce (unsafeCoerce)

foreign import data Any :: Type
foreign import data AccessibilityTrait :: Type
foreign import data DataDetectorTypes :: Type


foreign import data AccessibilityRole :: Type
foreign import data AccessibilityState :: Type
foreign import data Insets :: Type
foreign import data GestureResponderEvent :: Type
foreign import data ActivityIndicatorPropsSize :: Type
foreign import data Date :: Type
foreign import data DatePickerIOSPropsMinuteInterval :: Type
foreign import data ReadonlyArray :: Type
foreign import data ListRenderItem :: Type
foreign import data FlatListPropsListEmptyComponent :: Type
foreign import data FlatListPropsListFooterComponent :: Type
foreign import data FlatListPropsListHeaderComponent :: Type
foreign import data PointPropType :: Type
foreign import data FlatListPropsDecelerationRate :: Type
foreign import data ItemT :: Type
foreign import data FlatListPropsKeyboardShouldPersistTaps :: Type
foreign import data FlatListPropsOnEndReached :: Type
foreign import data FlatListPropsOnRefresh :: Type
foreign import data FlatListPropsOnViewableItemsChanged :: Type
foreign import data ViewabilityConfig :: Type
foreign import data ViewabilityConfigCallbackPairs :: Type
foreign import data ImageSourcePropType :: Type
foreign import data ImagePropsDefaultSource :: Type
foreign import data ImageURISource :: Type
foreign import data ImageResizeMode :: Type
foreign import data ListViewDataSource :: Type
foreign import data ListViewPropsRenderRow :: Type
foreign import data ListViewPropsDecelerationRate :: Type
foreign import data ListViewPropsKeyboardShouldPersistTaps :: Type
foreign import data ListViewPropsRenderSectionHeader :: Type
foreign import data ListViewPropsRenderSeparator :: Type
foreign import data MapViewAnnotation :: Type
foreign import data MapViewOverlay :: Type
foreign import data MapViewRegion :: Type
foreign import data Route :: Type
foreign import data PickerIOSPropsOnValueChange :: Type
foreign import data PickerIOSPropsSelectedValue :: Type
foreign import data PickerIOSItemPropsValue :: Type
foreign import data RecyclerViewBackedScrollViewPropsDecelerationRate :: Type
foreign import data RecyclerViewBackedScrollViewPropsKeyboardShouldPersistTaps :: Type
foreign import data ScrollViewPropsDecelerationRate :: Type
foreign import data ScrollViewPropsKeyboardShouldPersistTaps :: Type
foreign import data StatusBarStyle :: Type
foreign import data TabBarIOSItemPropsBadge :: Type
foreign import data KeyboardTypeOptions :: Type
foreign import data ReturnKeyTypeOptions :: Type
foreign import data DocumentSelectionState :: Type
foreign import data ToolbarAndroidAction :: Type
foreign import data BackgroundPropType :: Type
foreign import data WebViewPropsDecelerationRate :: Type
foreign import data WebViewNativeConfig :: Type
foreign import data WebViewIOSLoadRequestEvent :: Type
foreign import data WebViewPropsSource :: Type

type ARTTextProps = 
  ( alignment :: String
  , fill :: String
  , font :: String
  , opacity :: Number
  , originX :: Number
  , originY :: Number
  , scale :: Number
  , scaleX :: Number
  , scaleY :: Number
  , stroke :: String
  , strokeCap :: String
  , strokeDash :: (Array Number)
  , strokeJoin :: String
  , strokeWidth :: Number
  , title :: String
  , visible :: Boolean
  , x :: Number
  , y :: Number
  )

type ActivityIndicatorProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , animating :: Boolean
  , collapsable :: Boolean
  , color :: String
  , hidesWhenStopped :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , size :: ActivityIndicatorPropsSize
  , style :: CSS
  , testID :: String
  )

type ActivityIndicatorIOSProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , animating :: Boolean
  , collapsable :: Boolean
  , color :: String
  , hidesWhenStopped :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , size :: String
  , style :: CSS
  , testID :: String
  )

type ButtonProps_required optional = 
  ( onPress :: EventHandler
  , title :: String
  | optional
  )

type ButtonProps_optional = 
  ( accessibilityLabel :: String
  , color :: String
  , disabled :: Boolean
  , testID :: String
  )

type ARTClippingRectangleProps = 
  ( height :: Number
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
  )

type DatePickerIOSProps_required optional = 
  ( date :: Date
  , onDateChange :: EventHandler
  | optional
  )

type DatePickerIOSProps_optional = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , locale :: String
  , maximumDate :: Date
  , minimumDate :: Date
  , minuteInterval :: DatePickerIOSPropsMinuteInterval
  , mode :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , timeZoneOffsetInMinutes :: Number
  )

type DrawerLayoutAndroidProps_required optional = 
  ( renderNavigationView :: JSX
  | optional
  )

type DrawerLayoutAndroidProps_optional = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , drawerBackgroundColor :: String
  , drawerLockMode :: String
  , drawerPosition :: Number
  , drawerWidth :: Number
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , keyboardDismissMode :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onDrawerClose :: EventHandler
  , onDrawerOpen :: EventHandler
  , onDrawerSlide :: EventHandler
  , onDrawerStateChanged :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , statusBarBackgroundColor :: String
  , style :: CSS
  , testID :: String
  )

type FlatListProps_required optional = 
  ( data :: ReadonlyArray
  , renderItem :: ListRenderItem
  | optional
  )

type FlatListProps_optional = 
  ( itemSeparatorComponent :: (Component Any)
  , listEmptyComponent :: FlatListPropsListEmptyComponent
  , listFooterComponent :: FlatListPropsListFooterComponent
  , listHeaderComponent :: FlatListPropsListHeaderComponent
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
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
  , contentInsetAdjustmentBehavior :: String
  , contentOffset :: PointPropType
  , data :: Any
  , debug :: Boolean
  , decelerationRate :: FlatListPropsDecelerationRate
  , directionalLockEnabled :: Boolean
  , disableVirtualization :: Boolean
  , endFillColor :: String
  , extraData :: Any
  , getItem :: (EffectFn2 Any Number ItemT)
  , getItemCount :: (EffectFn1 Any Number)
  , getItemLayout :: (EffectFn2 Any Number ({ length :: Number, offset :: Number, index :: Number }))
  , getItemLayout :: (EffectFn2 (Array ItemT) Number ({ length :: Number, offset :: Number, index :: Number }))
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: String
  , indicatorStyle :: String
  , initialNumToRender :: Number
  , initialScrollIndex :: Number
  , invertStickyHeaders :: Boolean
  , inverted :: Boolean
  , keyExtractor :: (EffectFn2 ItemT Number String)
  , keyboardDismissMode :: String
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
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onEndReached :: FlatListPropsOnEndReached
  , onEndReachedThreshold :: Number
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , onScrollAnimationEnd :: EventHandler
  , onScrollBeginDrag :: EventHandler
  , onScrollEndDrag :: EventHandler
  , onScrollToIndexFailed :: (EffectFn1 ({ index :: Number, highestMeasuredFrameIndex :: Number, averageItemLength :: Number }) Unit)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onViewableItemsChanged :: FlatListPropsOnViewableItemsChanged
  , overScrollMode :: String
  , pagingEnabled :: Boolean
  , pinchGestureEnabled :: Boolean
  , pointerEvents :: String
  , progressViewOffset :: Number
  , refreshControl :: JSX
  , refreshing :: Boolean
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
  , snapToAlignment :: String
  , snapToInterval :: Number
  , stickyHeaderIndices :: (Array Number)
  , style :: CSS
  , testID :: String
  , updateCellsBatchingPeriod :: Number
  , viewabilityConfig :: Any
  , viewabilityConfig :: ViewabilityConfig
  , viewabilityConfigCallbackPairs :: ViewabilityConfigCallbackPairs
  , windowSize :: Number
  , zoomScale :: Number
  )

type ARTGroupProps = 
  ( height :: Number
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
  )

type ImageProps_required optional = 
  ( source :: ImageSourcePropType
  | optional
  )

type ImageProps_optional = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessible :: Boolean
  , blurRadius :: Number
  , borderBottomLeftRadius :: Number
  , borderBottomRightRadius :: Number
  , borderRadius :: Number
  , borderTopLeftRadius :: Number
  , borderTopRightRadius :: Number
  , capInsets :: Insets
  , defaultSource :: ImagePropsDefaultSource
  , fadeDuration :: Number
  , height :: Number
  , importantForAccessibility :: String
  , loadingIndicatorSource :: ImageURISource
  , onAccessibilityTap :: EventHandler
  , onError :: EventHandler
  , onLayout :: EventHandler
  , onLoad :: EventHandler
  , onLoadEnd :: EventHandler
  , onLoadStart :: EventHandler
  , onMagicTap :: EventHandler
  , onPartialLoad :: EventHandler
  , onProgress :: EventHandler
  , progressiveRenderingEnabled :: Boolean
  , resizeMethod :: String
  , resizeMode :: ImageResizeMode
  , style :: CSS
  , testID :: String
  , width :: Number
  )

type InputAccessoryViewProps = 
  ( backgroundColor :: String
  , nativeID :: String
  , style :: CSS
  )

type KeyboardAvoidingViewProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , behavior :: String
  , collapsable :: Boolean
  , contentContainerStyle :: CSS
  , enabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , keyboardVerticalOffset :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  )

type ListViewProps_required optional = 
  ( dataSource :: ListViewDataSource
  , renderRow :: (EffectFn4 Any ListViewPropsRenderRow ListViewPropsRenderRow (Maybe Boolean) JSX)
  | optional
  )

type ListViewProps_optional = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
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
  , contentInsetAdjustmentBehavior :: String
  , contentOffset :: PointPropType
  , decelerationRate :: ListViewPropsDecelerationRate
  , directionalLockEnabled :: Boolean
  , enableEmptySections :: Boolean
  , endFillColor :: String
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: String
  , indicatorStyle :: String
  , initialListSize :: Number
  , invertStickyHeaders :: Boolean
  , keyboardDismissMode :: String
  , keyboardShouldPersistTaps :: ListViewPropsKeyboardShouldPersistTaps
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , nestedScrollEnabled :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onChangeVisibleRows :: EventHandler
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onEndReached :: EventHandler
  , onEndReachedThreshold :: Number
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , onScrollAnimationEnd :: EventHandler
  , onScrollBeginDrag :: EventHandler
  , onScrollEndDrag :: EventHandler
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , overScrollMode :: String
  , pageSize :: Number
  , pagingEnabled :: Boolean
  , pinchGestureEnabled :: Boolean
  , pointerEvents :: String
  , refreshControl :: JSX
  , removeClippedSubviews :: Boolean
  , renderFooter :: (Effect JSX)
  , renderHeader :: (Effect JSX)
  , renderScrollComponent :: (EffectFn1 (Record ScrollViewProps) JSX)
  , renderSectionHeader :: (EffectFn2 Any ListViewPropsRenderSectionHeader JSX)
  , renderSeparator :: (EffectFn3 ListViewPropsRenderSeparator ListViewPropsRenderSeparator (Maybe Boolean) JSX)
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
  , snapToAlignment :: String
  , snapToInterval :: Number
  , stickyHeaderIndices :: (Array Number)
  , stickySectionHeadersEnabled :: Boolean
  , style :: CSS
  , testID :: String
  , zoomScale :: Number
  )

type MapViewProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , annotations :: (Array MapViewAnnotation)
  , collapsable :: Boolean
  , followUserLocation :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , legalLabelInsets :: Insets
  , mapType :: String
  , maxDelta :: Number
  , minDelta :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onAnnotationPress :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onRegionChange :: EventHandler
  , onRegionChangeComplete :: EventHandler
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
  , pointerEvents :: String
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
  )

type MaskedViewIOSProps_required optional = 
  ( maskElement :: JSX
  | optional
  )

type MaskedViewIOSProps_optional = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  )

type NavigatorIOSProps_required optional = 
  ( initialRoute :: Route
  | optional
  )

type NavigatorIOSProps_optional = 
  ( barTintColor :: String
  , interactivePopGestureEnabled :: Boolean
  , itemWrapperStyle :: CSS
  , navigationBarHidden :: Boolean
  , shadowHidden :: Boolean
  , style :: CSS
  , tintColor :: String
  , titleTextColor :: String
  , translucent :: Boolean
  )

type PickerProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , enabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , itemStyle :: CSS
  , mode :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , prompt :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selectedValue :: Any
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , testId :: String
  )

type PickerIOSProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , itemStyle :: CSS
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , onValueChange :: (EffectFn1 PickerIOSPropsOnValueChange Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selectedValue :: PickerIOSPropsSelectedValue
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  )

type PickerIOSItemProps = 
  ( label :: String
  , value :: PickerIOSItemPropsValue
  )

type PickerItemProps_required optional = 
  ( label :: String
  | optional
  )

type PickerItemProps_optional = 
  ( color :: String
  , testID :: String
  , value :: Any
  )

type ProgressBarAndroidProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , color :: String
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , indeterminate :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , progress :: Number
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , styleAttr :: String
  , testID :: String
  )

type ProgressViewIOSProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , progress :: Number
  , progressImage :: (Array ImageURISource)
  , progressTintColor :: String
  , progressViewStyle :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , trackImage :: (Array ImageURISource)
  , trackTintColor :: String
  )

type RecyclerViewBackedScrollViewProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
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
  , contentInsetAdjustmentBehavior :: String
  , contentOffset :: PointPropType
  , decelerationRate :: RecyclerViewBackedScrollViewPropsDecelerationRate
  , directionalLockEnabled :: Boolean
  , endFillColor :: String
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: String
  , indicatorStyle :: String
  , invertStickyHeaders :: Boolean
  , keyboardDismissMode :: String
  , keyboardShouldPersistTaps :: RecyclerViewBackedScrollViewPropsKeyboardShouldPersistTaps
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , nestedScrollEnabled :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , onScrollAnimationEnd :: EventHandler
  , onScrollBeginDrag :: EventHandler
  , onScrollEndDrag :: EventHandler
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , overScrollMode :: String
  , pagingEnabled :: Boolean
  , pinchGestureEnabled :: Boolean
  , pointerEvents :: String
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
  , snapToAlignment :: String
  , snapToInterval :: Number
  , stickyHeaderIndices :: (Array Number)
  , style :: CSS
  , testID :: String
  , zoomScale :: Number
  )

type RefreshControlProps_required optional = 
  ( refreshing :: Boolean
  | optional
  )

type RefreshControlProps_optional = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , colors :: (Array String)
  , enabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onRefresh :: EventHandler
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
  , pointerEvents :: String
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
  )

type ViewProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  )

type ScrollViewProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
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
  , contentInsetAdjustmentBehavior :: String
  , contentOffset :: PointPropType
  , decelerationRate :: ScrollViewPropsDecelerationRate
  , directionalLockEnabled :: Boolean
  , endFillColor :: String
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: String
  , indicatorStyle :: String
  , invertStickyHeaders :: Boolean
  , keyboardDismissMode :: String
  , keyboardShouldPersistTaps :: ScrollViewPropsKeyboardShouldPersistTaps
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , nestedScrollEnabled :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , onScrollAnimationEnd :: EventHandler
  , onScrollBeginDrag :: EventHandler
  , onScrollEndDrag :: EventHandler
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchEndCapture :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , overScrollMode :: String
  , pagingEnabled :: Boolean
  , pinchGestureEnabled :: Boolean
  , pointerEvents :: String
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
  , snapToAlignment :: String
  , snapToInterval :: Number
  , stickyHeaderIndices :: (Array Number)
  , style :: CSS
  , testID :: String
  , zoomScale :: Number
  )

type SegmentedControlIOSProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , enabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , momentary :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onChange :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selectedIndex :: Number
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tintColor :: String
  , values :: (Array String)
  )

type ARTShapeProps_required optional = 
  ( d :: String
  | optional
  )

type ARTShapeProps_optional = 
  ( fill :: String
  , height :: Number
  , opacity :: Number
  , originX :: Number
  , originY :: Number
  , scale :: Number
  , scaleX :: Number
  , scaleY :: Number
  , stroke :: String
  , strokeCap :: String
  , strokeDash :: (Array Number)
  , strokeJoin :: String
  , strokeWidth :: Number
  , title :: String
  , visible :: Boolean
  , width :: Number
  , x :: Number
  , y :: Number
  )

type SliderProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , maximumTrackImage :: ImageURISource
  , maximumTrackTintColor :: String
  , maximumValue :: Number
  , minimumTrackImage :: ImageURISource
  , minimumTrackTintColor :: String
  , minimumValue :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
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
  )

type StatusBarProps = 
  ( animated :: Boolean
  , backgroundColor :: String
  , barStyle :: StatusBarStyle
  , hidden :: Boolean
  , networkActivityIndicatorVisible :: Boolean
  , showHideTransition :: String
  , translucent :: Boolean
  )

type ARTSurfaceProps_required optional = 
  ( height :: Number
  , width :: Number
  | optional
  )

type ARTSurfaceProps_optional = 
  ( style :: CSS
  )

type SwitchProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , ios_backgroundColor :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , thumbColor :: String
  , thumbTintColor :: String
  , tintColor :: String
  , trackColor :: ({ false :: String, true :: String })
  , value :: Boolean
  )

type SwitchIOSProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , thumbTintColor :: String
  , tintColor :: String
  , value :: Boolean
  )

type TabBarIOSProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , barTintColor :: String
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , itemPositioning :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tintColor :: String
  , translucent :: Boolean
  , unselectedItemTintColor :: String
  , unselectedTintColor :: String
  )

type TabBarIOSItemProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , badge :: TabBarIOSItemPropsBadge
  , badgeColor :: String
  , collapsable :: Boolean
  , hitSlop :: Insets
  , icon :: ImageURISource
  , importantForAccessibility :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onPress :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderAsOriginal :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selected :: Boolean
  , selectedIcon :: ImageURISource
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , systemIcon :: String
  , testID :: String
  , title :: String
  )

type TextProps = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessible :: Boolean
  , adjustsFontSizeToFit :: Boolean
  , allowFontScaling :: Boolean
  , ellipsizeMode :: String
  , importantForAccessibility :: String
  , lineBreakMode :: String
  , minimumFontScale :: Number
  , nativeID :: String
  , numberOfLines :: Number
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onLongPress :: EventHandler
  , onMagicTap :: EventHandler
  , onPress :: EventHandler
  , selectable :: Boolean
  , selectionColor :: String
  , style :: CSS
  , suppressHighlighting :: Boolean
  , testID :: String
  , textBreakStrategy :: String
  )

type TextInputProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , allowFontScaling :: Boolean
  , autoCapitalize :: String
  , autoCorrect :: Boolean
  , autoFocus :: Boolean
  , blurOnSubmit :: Boolean
  , caretHidden :: Boolean
  , clearButtonMode :: String
  , clearTextOnFocus :: Boolean
  , collapsable :: Boolean
  , contextMenuHidden :: Boolean
  , dataDetectorTypes :: (Array DataDetectorTypes)
  , defaultValue :: String
  , disableFullscreenUI :: Boolean
  , editable :: Boolean
  , enablesReturnKeyAutomatically :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , inlineImageLeft :: String
  , inlineImagePadding :: Number
  , inputAccessoryViewID :: String
  , keyboardAppearance :: String
  , keyboardType :: KeyboardTypeOptions
  , maxLength :: Number
  , multiline :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , numberOfLines :: Number
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onBlur :: EventHandler
  , onChange :: EventHandler
  , onChangeText :: (EffectFn1 String Unit)
  , onContentSizeChange :: EventHandler
  , onEndEditing :: EventHandler
  , onFocus :: EventHandler
  , onKeyPress :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , returnKeyLabel :: String
  , returnKeyType :: ReturnKeyTypeOptions
  , scrollEnabled :: Boolean
  , secureTextEntry :: Boolean
  , selectTextOnFocus :: Boolean
  , selection :: ({ start :: Number, end :: Number })
  , selectionColor :: String
  , selectionState :: DocumentSelectionState
  , shouldRasterizeIOS :: Boolean
  , spellCheck :: Boolean
  , style :: CSS
  , testID :: String
  , textBreakStrategy :: String
  , textContentType :: String
  , underlineColorAndroid :: String
  , value :: String
  )

type ToolbarAndroidProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , actions :: (Array ToolbarAndroidAction)
  , collapsable :: Boolean
  , contentInsetEnd :: Number
  , contentInsetStart :: Number
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , logo :: ImageURISource
  , nativeID :: String
  , navIcon :: ImageURISource
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onActionSelected :: (EffectFn1 Number Unit)
  , onIconClicked :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
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
  )

type TouchableHighlightProps = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessible :: Boolean
  , activeOpacity :: Number
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , onAccessibilityTap :: EventHandler
  , onHideUnderlay :: EventHandler
  , onLayout :: EventHandler
  , onLongPress :: EventHandler
  , onMagicTap :: EventHandler
  , onPress :: EventHandler
  , onPressIn :: EventHandler
  , onPressOut :: EventHandler
  , onShowUnderlay :: EventHandler
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  , underlayColor :: String
  )

type TouchableNativeFeedbackProps = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessible :: Boolean
  , background :: BackgroundPropType
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onLongPress :: EventHandler
  , onMagicTap :: EventHandler
  , onPress :: EventHandler
  , onPressIn :: EventHandler
  , onPressOut :: EventHandler
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  , useForeground :: Boolean
  )

type TouchableOpacityProps = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessible :: Boolean
  , activeOpacity :: Number
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onLongPress :: EventHandler
  , onMagicTap :: EventHandler
  , onPress :: EventHandler
  , onPressIn :: EventHandler
  , onPressOut :: EventHandler
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  )

type TouchableWithoutFeedbackProps = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessible :: Boolean
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onLongPress :: EventHandler
  , onMagicTap :: EventHandler
  , onPress :: EventHandler
  , onPressIn :: EventHandler
  , onPressOut :: EventHandler
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  )

type ViewPagerAndroidProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , initialPage :: Number
  , keyboardDismissMode :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onLayout :: EventHandler
  , onMagicTap :: EventHandler
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onPageScroll :: EventHandler
  , onPageScrollStateChanged :: (EffectFn1 String Unit)
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
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , scrollEnabled :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  )

type WebViewProps = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: AccessibilityRole
  , accessibilityStates :: (Array AccessibilityState)
  , accessibilityTraits :: (Array AccessibilityTrait)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , allowFileAccess :: Boolean
  , allowsInlineMediaPlayback :: Boolean
  , automaticallyAdjustContentInsets :: Boolean
  , bounces :: Boolean
  , collapsable :: Boolean
  , contentInset :: Insets
  , dataDetectorTypes :: (Array DataDetectorTypes)
  , decelerationRate :: WebViewPropsDecelerationRate
  , domStorageEnabled :: Boolean
  , hitSlop :: Insets
  , html :: String
  , importantForAccessibility :: String
  , injectedJavaScript :: String
  , javaScriptEnabled :: Boolean
  , mediaPlaybackRequiresUserAction :: Boolean
  , mixedContentMode :: String
  , nativeConfig :: WebViewNativeConfig
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: EventHandler
  , onAccessibilityTap :: EventHandler
  , onError :: EventHandler
  , onLayout :: EventHandler
  , onLoad :: EventHandler
  , onLoadEnd :: EventHandler
  , onLoadStart :: EventHandler
  , onMagicTap :: EventHandler
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
  , pointerEvents :: String
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
  )
aRTText
  :: ∀ attrs attrs_
   . Union attrs attrs_ ARTTextProps
  => Record attrs
  -> JSX
aRTText props = element (unsafeCoerce "ARTText") props

activityIndicator
  :: ∀ attrs attrs_
   . Union attrs attrs_ ActivityIndicatorProps
  => Record attrs
  -> JSX
activityIndicator props = element (unsafeCoerce "ActivityIndicator") props

activityIndicatorIOS
  :: ∀ attrs attrs_
   . Union attrs attrs_ ActivityIndicatorIOSProps
  => Record attrs
  -> JSX
activityIndicatorIOS props = element (unsafeCoerce "ActivityIndicatorIOS") props

button
  :: ∀ attrs attrs_
   . Union attrs attrs_ ButtonProps_optional
  => Record (ButtonProps_required attrs)
  -> JSX
button props = element (unsafeCoerce "Button") props

aRTClippingRectangle
  :: ∀ attrs attrs_
   . Union attrs attrs_ ARTClippingRectangleProps
  => Record attrs
  -> JSX
aRTClippingRectangle props = element (unsafeCoerce "ARTClippingRectangle") props

datePickerIOS
  :: ∀ attrs attrs_
   . Union attrs attrs_ DatePickerIOSProps_optional
  => Record (DatePickerIOSProps_required attrs)
  -> JSX
datePickerIOS props = element (unsafeCoerce "DatePickerIOS") props

drawerLayoutAndroid
  :: ∀ attrs attrs_
   . Union attrs attrs_ DrawerLayoutAndroidProps_optional
  => Record (DrawerLayoutAndroidProps_required attrs)
  -> JSX
drawerLayoutAndroid props = element (unsafeCoerce "DrawerLayoutAndroid") props

flatList
  :: ∀ attrs attrs_
   . Union attrs attrs_ FlatListProps_optional
  => Record (FlatListProps_required attrs)
  -> JSX
flatList props = element (unsafeCoerce "FlatList") props

aRTGroup
  :: ∀ attrs attrs_
   . Union attrs attrs_ ARTGroupProps
  => Record attrs
  -> JSX
aRTGroup props = element (unsafeCoerce "ARTGroup") props

image
  :: ∀ attrs attrs_
   . Union attrs attrs_ ImageProps_optional
  => Record (ImageProps_required attrs)
  -> JSX
image props = element (unsafeCoerce "Image") props

inputAccessoryView
  :: ∀ attrs attrs_
   . Union attrs attrs_ InputAccessoryViewProps
  => Record attrs
  -> JSX
inputAccessoryView props = element (unsafeCoerce "InputAccessoryView") props

keyboardAvoidingView
  :: ∀ attrs attrs_
   . Union attrs attrs_ KeyboardAvoidingViewProps
  => Record attrs
  -> JSX
keyboardAvoidingView props = element (unsafeCoerce "KeyboardAvoidingView") props

listView
  :: ∀ attrs attrs_
   . Union attrs attrs_ ListViewProps_optional
  => Record (ListViewProps_required attrs)
  -> JSX
listView props = element (unsafeCoerce "ListView") props

mapView
  :: ∀ attrs attrs_
   . Union attrs attrs_ MapViewProps
  => Record attrs
  -> JSX
mapView props = element (unsafeCoerce "MapView") props

maskedViewIOS
  :: ∀ attrs attrs_
   . Union attrs attrs_ MaskedViewIOSProps_optional
  => Record (MaskedViewIOSProps_required attrs)
  -> JSX
maskedViewIOS props = element (unsafeCoerce "MaskedViewIOS") props

navigatorIOS
  :: ∀ attrs attrs_
   . Union attrs attrs_ NavigatorIOSProps_optional
  => Record (NavigatorIOSProps_required attrs)
  -> JSX
navigatorIOS props = element (unsafeCoerce "NavigatorIOS") props

picker
  :: ∀ attrs attrs_
   . Union attrs attrs_ PickerProps
  => Record attrs
  -> JSX
picker props = element (unsafeCoerce "Picker") props

pickerIOS
  :: ∀ attrs attrs_
   . Union attrs attrs_ PickerIOSProps
  => Record attrs
  -> JSX
pickerIOS props = element (unsafeCoerce "PickerIOS") props

pickerIOSItem
  :: ∀ attrs attrs_
   . Union attrs attrs_ PickerIOSItemProps
  => Record attrs
  -> JSX
pickerIOSItem props = element (unsafeCoerce "PickerIOSItem") props

pickerItem
  :: ∀ attrs attrs_
   . Union attrs attrs_ PickerItemProps_optional
  => Record (PickerItemProps_required attrs)
  -> JSX
pickerItem props = element (unsafeCoerce "PickerItem") props

progressBarAndroid
  :: ∀ attrs attrs_
   . Union attrs attrs_ ProgressBarAndroidProps
  => Record attrs
  -> JSX
progressBarAndroid props = element (unsafeCoerce "ProgressBarAndroid") props

progressViewIOS
  :: ∀ attrs attrs_
   . Union attrs attrs_ ProgressViewIOSProps
  => Record attrs
  -> JSX
progressViewIOS props = element (unsafeCoerce "ProgressViewIOS") props

recyclerViewBackedScrollView
  :: ∀ attrs attrs_
   . Union attrs attrs_ RecyclerViewBackedScrollViewProps
  => Record attrs
  -> JSX
recyclerViewBackedScrollView props = element (unsafeCoerce "RecyclerViewBackedScrollView") props

refreshControl
  :: ∀ attrs attrs_
   . Union attrs attrs_ RefreshControlProps_optional
  => Record (RefreshControlProps_required attrs)
  -> JSX
refreshControl props = element (unsafeCoerce "RefreshControl") props

view
  :: ∀ attrs attrs_
   . Union attrs attrs_ ViewProps
  => Record attrs
  -> JSX
view props = element (unsafeCoerce "View") props

scrollView
  :: ∀ attrs attrs_
   . Union attrs attrs_ ScrollViewProps
  => Record attrs
  -> JSX
scrollView props = element (unsafeCoerce "ScrollView") props

segmentedControlIOS
  :: ∀ attrs attrs_
   . Union attrs attrs_ SegmentedControlIOSProps
  => Record attrs
  -> JSX
segmentedControlIOS props = element (unsafeCoerce "SegmentedControlIOS") props

aRTShape
  :: ∀ attrs attrs_
   . Union attrs attrs_ ARTShapeProps_optional
  => Record (ARTShapeProps_required attrs)
  -> JSX
aRTShape props = element (unsafeCoerce "ARTShape") props

slider
  :: ∀ attrs attrs_
   . Union attrs attrs_ SliderProps
  => Record attrs
  -> JSX
slider props = element (unsafeCoerce "Slider") props

statusBar
  :: ∀ attrs attrs_
   . Union attrs attrs_ StatusBarProps
  => Record attrs
  -> JSX
statusBar props = element (unsafeCoerce "StatusBar") props

aRTSurface
  :: ∀ attrs attrs_
   . Union attrs attrs_ ARTSurfaceProps_optional
  => Record (ARTSurfaceProps_required attrs)
  -> JSX
aRTSurface props = element (unsafeCoerce "ARTSurface") props

switch
  :: ∀ attrs attrs_
   . Union attrs attrs_ SwitchProps
  => Record attrs
  -> JSX
switch props = element (unsafeCoerce "Switch") props

switchIOS
  :: ∀ attrs attrs_
   . Union attrs attrs_ SwitchIOSProps
  => Record attrs
  -> JSX
switchIOS props = element (unsafeCoerce "SwitchIOS") props

tabBarIOS
  :: ∀ attrs attrs_
   . Union attrs attrs_ TabBarIOSProps
  => Record attrs
  -> JSX
tabBarIOS props = element (unsafeCoerce "TabBarIOS") props

tabBarIOSItem
  :: ∀ attrs attrs_
   . Union attrs attrs_ TabBarIOSItemProps
  => Record attrs
  -> JSX
tabBarIOSItem props = element (unsafeCoerce "TabBarIOSItem") props

text
  :: ∀ attrs attrs_
   . Union attrs attrs_ TextProps
  => Record attrs
  -> JSX
text props = element (unsafeCoerce "Text") props

textInput
  :: ∀ attrs attrs_
   . Union attrs attrs_ TextInputProps
  => Record attrs
  -> JSX
textInput props = element (unsafeCoerce "TextInput") props

toolbarAndroid
  :: ∀ attrs attrs_
   . Union attrs attrs_ ToolbarAndroidProps
  => Record attrs
  -> JSX
toolbarAndroid props = element (unsafeCoerce "ToolbarAndroid") props

touchableHighlight
  :: ∀ attrs attrs_
   . Union attrs attrs_ TouchableHighlightProps
  => Record attrs
  -> JSX
touchableHighlight props = element (unsafeCoerce "TouchableHighlight") props

touchableNativeFeedback
  :: ∀ attrs attrs_
   . Union attrs attrs_ TouchableNativeFeedbackProps
  => Record attrs
  -> JSX
touchableNativeFeedback props = element (unsafeCoerce "TouchableNativeFeedback") props

touchableOpacity
  :: ∀ attrs attrs_
   . Union attrs attrs_ TouchableOpacityProps
  => Record attrs
  -> JSX
touchableOpacity props = element (unsafeCoerce "TouchableOpacity") props

touchableWithoutFeedback
  :: ∀ attrs attrs_
   . Union attrs attrs_ TouchableWithoutFeedbackProps
  => Record attrs
  -> JSX
touchableWithoutFeedback props = element (unsafeCoerce "TouchableWithoutFeedback") props

viewPagerAndroid
  :: ∀ attrs attrs_
   . Union attrs attrs_ ViewPagerAndroidProps
  => Record attrs
  -> JSX
viewPagerAndroid props = element (unsafeCoerce "ViewPagerAndroid") props

webView
  :: ∀ attrs attrs_
   . Union attrs attrs_ WebViewProps
  => Record attrs
  -> JSX
webView props = element (unsafeCoerce "WebView") props
