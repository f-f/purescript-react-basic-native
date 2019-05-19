-- | ----------------------------------------
-- | THIS FILE IS GENERATED -- DO NOT EDIT IT
-- | ----------------------------------------

module React.Basic.Native.Generated where

import Prelude

import Data.JSDate (JSDate)
import Data.Undefinable (Undefinable)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, EffectFn4)
import Foreign (Foreign)
import Foreign.Object (Object)
import Prim.Row (class Union)
import React.Basic (JSX)
import React.Basic.DOM.Internal (CSS)

import React.Basic.Native.Internal (unsafeCreateNativeElement)

type NativeSynteticEvent e = {
  nativeEvent :: e 
, currentTarget :: Number 
, target :: Number 
, bubbles :: Boolean
, cancelable :: Boolean
, defaultPrevented :: Boolean
, eventPhase :: Number
, isTrusted :: Boolean
, preventDefault :: Effect Unit
, isDefaultPrevented :: Effect Boolean
, stopPropagation :: Effect Unit
, isPropagationStopped :: Effect Boolean
, persist :: Effect Unit
, timeStamp :: Number
, type :: String
}


type ARTClippingRectangleProps  = 
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
  , key :: String
  , children :: Array JSX
  )


clippingRectangle
  :: forall attrs attrs_  
  . Union attrs attrs_ (ARTClippingRectangleProps  )
  => Record attrs
  -> JSX
clippingRectangle props = unsafeCreateNativeElement "ClippingRectangle" props
 

clippingRectangle_ :: Array JSX -> JSX
clippingRectangle_ children = clippingRectangle { children }


type ARTGroupProps  = 
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
  , key :: String
  , children :: Array JSX
  )


group
  :: forall attrs attrs_  
  . Union attrs attrs_ (ARTGroupProps  )
  => Record attrs
  -> JSX
group props = unsafeCreateNativeElement "Group" props
 

group_ :: Array JSX -> JSX
group_ children = group { children }


type ARTShapeProps_optional  = 
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
  , key :: String
  , children :: Array JSX
  )

type ARTShapeProps_required   optional = 
  ( d :: String
  | optional
  )


shape
  :: forall attrs attrs_  
  . Union attrs attrs_ (ARTShapeProps_optional  )
  => Record ((ARTShapeProps_required  ) attrs)
  -> JSX
shape props = unsafeCreateNativeElement "Shape" props


type ARTSurfaceProps_optional  = 
  ( style :: CSS
  , key :: String
  , children :: Array JSX
  )

type ARTSurfaceProps_required   optional = 
  ( height :: Number
  , width :: Number
  | optional
  )


surface
  :: forall attrs attrs_  
  . Union attrs attrs_ (ARTSurfaceProps_optional  )
  => Record ((ARTSurfaceProps_required  ) attrs)
  -> JSX
surface props = unsafeCreateNativeElement "Surface" props


type ARTTextProps  = 
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
  , key :: String
  , children :: Array JSX
  )


aRTText
  :: forall attrs attrs_  
  . Union attrs attrs_ (ARTTextProps  )
  => Record attrs
  -> JSX
aRTText props = unsafeCreateNativeElement "ARTText" props
 

aRTText_ :: Array JSX -> JSX
aRTText_ children = aRTText { children }


type ActivityIndicatorIOSProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , animating :: Boolean
  , collapsable :: Boolean
  , color :: String
  , hasTVPreferredFocus :: Boolean
  , hidesWhenStopped :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 { nativeEvent :: { layout :: { x :: Number, y :: Number, width :: Number, height :: Number } } } Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , size :: String
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


activityIndicatorIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (ActivityIndicatorIOSProps  )
  => Record attrs
  -> JSX
activityIndicatorIOS props = unsafeCreateNativeElement "ActivityIndicatorIOS" props
 

activityIndicatorIOS_ :: Array JSX -> JSX
activityIndicatorIOS_ children = activityIndicatorIOS { children }


type ActivityIndicatorProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , animating :: Boolean
  , collapsable :: Boolean
  , color :: String
  , hasTVPreferredFocus :: Boolean
  , hidesWhenStopped :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , size :: String
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


activityIndicator
  :: forall attrs attrs_  
  . Union attrs attrs_ (ActivityIndicatorProps  )
  => Record attrs
  -> JSX
activityIndicator props = unsafeCreateNativeElement "ActivityIndicator" props
 

activityIndicator_ :: Array JSX -> JSX
activityIndicator_ children = activityIndicator { children }


type ButtonProps_optional  = 
  ( accessibilityLabel :: String
  , color :: String
  , disabled :: Boolean
  , testID :: String
  , key :: String
  , children :: Array JSX
  )

type ButtonProps_required   optional = 
  ( onPress :: (EffectFn1 (NativeSyntheticEvent NativeTouchEvent) Unit)
  , title :: String
  | optional
  )


button
  :: forall attrs attrs_  
  . Union attrs attrs_ (ButtonProps_optional  )
  => Record ((ButtonProps_required  ) attrs)
  -> JSX
button props = unsafeCreateNativeElement "Button" props


type CheckBoxProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , disabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onChange :: (EffectFn1 Boolean Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , onValueChange :: (EffectFn1 Boolean Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , value :: Boolean
  , key :: String
  , children :: Array JSX
  )


checkBox
  :: forall attrs attrs_  
  . Union attrs attrs_ (CheckBoxProps  )
  => Record attrs
  -> JSX
checkBox props = unsafeCreateNativeElement "CheckBox" props
 

checkBox_ :: Array JSX -> JSX
checkBox_ children = checkBox { children }


type DatePickerIOSProps_optional  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , locale :: String
  , maximumDate :: JSDate
  , minimumDate :: JSDate
  , minuteInterval :: Number
  , mode :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , timeZoneOffsetInMinutes :: Number
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )

type DatePickerIOSProps_required   optional = 
  ( date :: JSDate
  , onDateChange :: (EffectFn1 JSDate Unit)
  | optional
  )


datePickerIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (DatePickerIOSProps_optional  )
  => Record ((DatePickerIOSProps_required  ) attrs)
  -> JSX
datePickerIOS props = unsafeCreateNativeElement "DatePickerIOS" props


type DocumentSelectionState  = {
    
}


type DrawerLayoutAndroidProps_optional  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , drawerBackgroundColor :: String
  , drawerLockMode :: String
  , drawerPosition :: Number
  , drawerWidth :: Number
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , keyboardDismissMode :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onDrawerClose :: (Effect Unit)
  , onDrawerOpen :: (Effect Unit)
  , onDrawerSlide :: (EffectFn1 DrawerSlideEvent Unit)
  , onDrawerStateChanged :: (EffectFn1 String Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , statusBarBackgroundColor :: String
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )

type DrawerLayoutAndroidProps_required   optional = 
  ( renderNavigationView :: (Effect JSX)
  | optional
  )


drawerLayoutAndroid
  :: forall attrs attrs_  
  . Union attrs attrs_ (DrawerLayoutAndroidProps_optional  )
  => Record ((DrawerLayoutAndroidProps_required  ) attrs)
  -> JSX
drawerLayoutAndroid props = unsafeCreateNativeElement "DrawerLayoutAndroid" props


type DrawerSlideEvent  = {
    
}


type FlatListProps_optional itemT = 
  ( "ItemSeparatorComponent" :: JSX
  , "ListEmptyComponent" :: JSX
  , "ListFooterComponent" :: JSX
  , "ListHeaderComponent" :: JSX
  , accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
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
  , debug :: Boolean
  , decelerationRate :: String
  , directionalLockEnabled :: Boolean
  , disableVirtualization :: Boolean
  , endFillColor :: String
  , extraData :: Foreign
  , getItem :: (EffectFn2 Foreign Number itemT)
  , getItemCount :: (EffectFn1 Foreign Number)
  , getItemLayout :: (EffectFn2 (Array itemT) Number { length :: Number, offset :: Number, index :: Number })
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: String
  , indicatorStyle :: String
  , initialNumToRender :: Number
  , initialScrollIndex :: Number
  , invertStickyHeaders :: Boolean
  , inverted :: Boolean
  , isTVSelectable :: Boolean
  , keyExtractor :: (EffectFn2 itemT Number String)
  , keyboardDismissMode :: String
  , keyboardShouldPersistTaps :: String
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
  , onEndReached :: ((EffectFn1 { distanceFromEnd :: Number } Unit))
  , onEndReachedThreshold :: String
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMomentumScrollBegin :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onMomentumScrollEnd :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onRefresh :: ((Effect Unit))
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onScroll :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onScrollAnimationEnd :: (Effect Unit)
  , onScrollBeginDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onScrollEndDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onScrollToIndexFailed :: (EffectFn1 { index :: Number, highestMeasuredFrameIndex :: Number, averageItemLength :: Number } Unit)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , onViewableItemsChanged :: ((EffectFn1 { viewableItems :: (Array ViewToken), changed :: (Array ViewToken) } Unit))
  , overScrollMode :: String
  , pagingEnabled :: Boolean
  , pinchGestureEnabled :: Boolean
  , pointerEvents :: String
  , progressViewOffset :: Number
  , refreshControl :: JSX
  , refreshing :: String
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
  , snapToEnd :: Boolean
  , snapToInterval :: Number
  , snapToOffsets :: (Array Number)
  , snapToStart :: Boolean
  , stickyHeaderIndices :: (Array Number)
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , updateCellsBatchingPeriod :: Number
  , viewabilityConfig :: Foreign
  , viewabilityConfigCallbackPairs :: (Array ViewabilityConfigCallbackPair)
  , windowSize :: Number
  , zoomScale :: Number
  , key :: String
  , children :: Array JSX
  )

type FlatListProps_required itemT  optional = 
  ( data :: (Array itemT)
  , renderItem :: (EffectFn1 (ListRenderItemInfo itemT) JSX)
  | optional
  )


flatList
  :: forall attrs attrs_ itemT 
  . Union attrs attrs_ (FlatListProps_optional itemT )
  => Record ((FlatListProps_required itemT ) attrs)
  -> JSX
flatList props = unsafeCreateNativeElement "FlatList" props


type GestureResponderEvent  = {
    
}


type ImageBackgroundProps_optional  = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessible :: Boolean
  , blurRadius :: Number
  , borderBottomLeftRadius :: Number
  , borderBottomRightRadius :: Number
  , borderRadius :: Number
  , borderTopLeftRadius :: Number
  , borderTopRightRadius :: Number
  , capInsets :: Insets
  , defaultSource :: ImageURISource
  , fadeDuration :: Number
  , height :: Number
  , imageStyle :: CSS
  , importantForAccessibility :: String
  , loadingIndicatorSource :: ImageURISource
  , onAccessibilityTap :: (Effect Unit)
  , onError :: (EffectFn1 (NativeSyntheticEvent ImageErrorEventData) Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onLoad :: (EffectFn1 (NativeSyntheticEvent ImageLoadEventData) Unit)
  , onLoadEnd :: (Effect Unit)
  , onLoadStart :: (Effect Unit)
  , onMagicTap :: (Effect Unit)
  , onPartialLoad :: (Effect Unit)
  , onProgress :: (EffectFn1 (NativeSyntheticEvent ImageProgressEventDataIOS) Unit)
  , progressiveRenderingEnabled :: Boolean
  , resizeMethod :: String
  , resizeMode :: String
  , style :: CSS
  , testID :: String
  , width :: Number
  , key :: String
  , children :: Array JSX
  )

type ImageBackgroundProps_required   optional = 
  ( source :: (Array ImageURISource)
  | optional
  )


imageBackground
  :: forall attrs attrs_  
  . Union attrs attrs_ (ImageBackgroundProps_optional  )
  => Record ((ImageBackgroundProps_required  ) attrs)
  -> JSX
imageBackground props = unsafeCreateNativeElement "ImageBackground" props


type ImageErrorEventData  = {
    error :: Foreign
}


type ImageLoadEventData  = {
    source :: { height :: Number, width :: Number, url :: String }
  , uri  :: (Undefinable  String)
}


type ImageProgressEventDataIOS  = {
    loaded :: Number
  , total :: Number
}


type ImageProps_optional  = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessible :: Boolean
  , blurRadius :: Number
  , borderBottomLeftRadius :: Number
  , borderBottomRightRadius :: Number
  , borderRadius :: Number
  , borderTopLeftRadius :: Number
  , borderTopRightRadius :: Number
  , capInsets :: Insets
  , defaultSource :: ImageURISource
  , fadeDuration :: Number
  , height :: Number
  , importantForAccessibility :: String
  , loadingIndicatorSource :: ImageURISource
  , onAccessibilityTap :: (Effect Unit)
  , onError :: (EffectFn1 (NativeSyntheticEvent ImageErrorEventData) Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onLoad :: (EffectFn1 (NativeSyntheticEvent ImageLoadEventData) Unit)
  , onLoadEnd :: (Effect Unit)
  , onLoadStart :: (Effect Unit)
  , onMagicTap :: (Effect Unit)
  , onPartialLoad :: (Effect Unit)
  , onProgress :: (EffectFn1 (NativeSyntheticEvent ImageProgressEventDataIOS) Unit)
  , progressiveRenderingEnabled :: Boolean
  , resizeMethod :: String
  , resizeMode :: String
  , style :: CSS
  , testID :: String
  , width :: Number
  , key :: String
  , children :: Array JSX
  )

type ImageProps_required   optional = 
  ( source :: (Array ImageURISource)
  | optional
  )


image
  :: forall attrs attrs_  
  . Union attrs attrs_ (ImageProps_optional  )
  => Record ((ImageProps_required  ) attrs)
  -> JSX
image props = unsafeCreateNativeElement "Image" props


type ImageURISource  = {
    body  :: (Undefinable  String)
  , bundle  :: (Undefinable  String)
  , cache  :: (Undefinable  String)
  , headers  :: (Undefinable  (Object Foreign))
  , height  :: (Undefinable  Number)
  , method  :: (Undefinable  String)
  , scale  :: (Undefinable  Number)
  , uri  :: (Undefinable  String)
  , width  :: (Undefinable  Number)
}


type InputAccessoryViewProps  = 
  ( backgroundColor :: String
  , nativeID :: String
  , style :: CSS
  , key :: String
  , children :: Array JSX
  )


inputAccessoryView
  :: forall attrs attrs_  
  . Union attrs attrs_ (InputAccessoryViewProps  )
  => Record attrs
  -> JSX
inputAccessoryView props = unsafeCreateNativeElement "InputAccessoryView" props
 

inputAccessoryView_ :: Array JSX -> JSX
inputAccessoryView_ children = inputAccessoryView { children }


type Insets  = {
    bottom  :: (Undefinable  Number)
  , left  :: (Undefinable  Number)
  , right  :: (Undefinable  Number)
  , top  :: (Undefinable  Number)
}


type KeyboardAvoidingViewProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , behavior :: String
  , collapsable :: Boolean
  , contentContainerStyle :: CSS
  , enabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , keyboardVerticalOffset :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


keyboardAvoidingView
  :: forall attrs attrs_  
  . Union attrs attrs_ (KeyboardAvoidingViewProps  )
  => Record attrs
  -> JSX
keyboardAvoidingView props = unsafeCreateNativeElement "KeyboardAvoidingView" props
 

keyboardAvoidingView_ :: Array JSX -> JSX
keyboardAvoidingView_ children = keyboardAvoidingView { children }


type LayoutChangeEvent  = {
    nativeEvent :: { layout :: LayoutRectangle }
}


type LayoutRectangle  = {
    height :: Number
  , width :: Number
  , x :: Number
  , y :: Number
}


type ListRenderItemInfo itemT = {
    index :: Number
  , item :: itemT
  , separators :: { highlight :: (Effect Unit), unhighlight :: (Effect Unit), updateProps :: (EffectFn2 String Foreign Unit) }
}


type ListViewDataSource  = {
    
}


type ListViewProps_optional  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
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
  , decelerationRate :: String
  , directionalLockEnabled :: Boolean
  , enableEmptySections :: Boolean
  , endFillColor :: String
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: String
  , indicatorStyle :: String
  , initialListSize :: Number
  , invertStickyHeaders :: Boolean
  , isTVSelectable :: Boolean
  , keyboardDismissMode :: String
  , keyboardShouldPersistTaps :: String
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , nestedScrollEnabled :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onChangeVisibleRows :: (EffectFn2 (Array (Object Foreign)) (Array (Object Foreign)) Unit)
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onEndReached :: (Effect Unit)
  , onEndReachedThreshold :: Number
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMomentumScrollBegin :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onMomentumScrollEnd :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onScroll :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onScrollAnimationEnd :: (Effect Unit)
  , onScrollBeginDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onScrollEndDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , renderSectionHeader :: (EffectFn2 Foreign String JSX)
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
  , snapToAlignment :: String
  , snapToEnd :: Boolean
  , snapToInterval :: Number
  , snapToOffsets :: (Array Number)
  , snapToStart :: Boolean
  , stickyHeaderIndices :: (Array Number)
  , stickySectionHeadersEnabled :: Boolean
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , zoomScale :: Number
  , key :: String
  , children :: Array JSX
  )

type ListViewProps_required   optional = 
  ( dataSource :: ListViewDataSource
  , renderRow :: (EffectFn4 Foreign String String Boolean JSX)
  | optional
  )


listView
  :: forall attrs attrs_  
  . Union attrs attrs_ (ListViewProps_optional  )
  => Record ((ListViewProps_required  ) attrs)
  -> JSX
listView props = unsafeCreateNativeElement "ListView" props


type MapViewAnnotation  = {
    animateDrop  :: (Undefinable  Boolean)
  , detailCalloutView  :: (Undefinable  JSX)
  , draggable  :: (Undefinable  Boolean)
  , hasLeftCallout  :: (Undefinable  Boolean)
  , hasRightCallout  :: (Undefinable  Boolean)
  , id  :: (Undefinable  String)
  , image  :: (Undefinable  ImageURISource)
  , latitude :: Number
  , leftCalloutView  :: (Undefinable  JSX)
  , longitude :: Number
  , onBlur  :: (Undefinable  (Effect Foreign))
  , onDragStateChange  :: (Undefinable  (Effect Foreign))
  , onFocus  :: (Undefinable  (Effect Foreign))
  , onLeftCalloutPress  :: (Undefinable  (Effect Unit))
  , onRightCalloutPress  :: (Undefinable  (Effect Unit))
  , rightCalloutView  :: (Undefinable  JSX)
  , subtitle  :: (Undefinable  String)
  , tintColor  :: (Undefinable  String)
  , title  :: (Undefinable  String)
  , view  :: (Undefinable  JSX)
}


type MapViewOverlay  = {
    coordinates :: (Array ({ latitude :: Number, longitude :: Number }))
  , fillColor  :: (Undefinable  String)
  , id  :: (Undefinable  String)
  , lineWidth  :: (Undefinable  Number)
  , strokeColor  :: (Undefinable  String)
}


type MapViewProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , annotations :: (Array MapViewAnnotation)
  , collapsable :: Boolean
  , followUserLocation :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , legalLabelInsets :: Insets
  , mapType :: String
  , maxDelta :: Number
  , minDelta :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onAnnotationPress :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onRegionChange :: (EffectFn1 MapViewRegion Unit)
  , onRegionChangeComplete :: (EffectFn1 MapViewRegion Unit)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , zoomEnabled :: Boolean
  , key :: String
  , children :: Array JSX
  )


mapView
  :: forall attrs attrs_  
  . Union attrs attrs_ (MapViewProps  )
  => Record attrs
  -> JSX
mapView props = unsafeCreateNativeElement "MapView" props
 

mapView_ :: Array JSX -> JSX
mapView_ children = mapView { children }


type MapViewRegion  = {
    latitude :: Number
  , latitudeDelta  :: (Undefinable  Number)
  , longitude :: Number
  , longitudeDelta  :: (Undefinable  Number)
}


type MaskedViewIOSProps_optional  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )

type MaskedViewIOSProps_required   optional = 
  ( maskElement :: JSX
  | optional
  )


maskedView
  :: forall attrs attrs_  
  . Union attrs attrs_ (MaskedViewIOSProps_optional  )
  => Record ((MaskedViewIOSProps_required  ) attrs)
  -> JSX
maskedView props = unsafeCreateNativeElement "MaskedView" props


type NativeScrollEvent  = {
    contentInset :: NativeScrollRectangle
  , contentOffset :: NativeScrollPoint
  , contentSize :: NativeScrollSize
  , layoutMeasurement :: NativeScrollSize
  , velocity  :: (Undefinable  NativeScrollVelocity)
  , zoomScale :: Number
}


type NativeScrollPoint  = {
    x :: Number
  , y :: Number
}


type NativeScrollRectangle  = {
    bottom :: Number
  , left :: Number
  , right :: Number
  , top :: Number
}


type NativeScrollSize  = {
    height :: Number
  , width :: Number
}


type NativeScrollVelocity  = {
    x :: Number
  , y :: Number
}


type NativeSegmentedControlIOSChangeEvent  = {
    selectedSegmentIndex :: Number
  , target :: Number
  , value :: String
}


type NativeSyntheticEvent t = {
    
}


newtype NativeTouchEvent = NativeTouchEvent {
    changedTouches :: (Array NativeTouchEvent)
  , identifier :: String
  , locationX :: Number
  , locationY :: Number
  , pageX :: Number
  , pageY :: Number
  , target :: String
  , timestamp :: Number
  , touches :: (Array NativeTouchEvent)
}


type NavState  = {
    canGoBack  :: (Undefinable  Boolean)
  , canGoForward  :: (Undefinable  Boolean)
  , loading  :: (Undefinable  Boolean)
  , title  :: (Undefinable  String)
  , url  :: (Undefinable  String)
}


type NavigatorIOSProps_optional  = 
  ( barTintColor :: String
  , interactivePopGestureEnabled :: Boolean
  , itemWrapperStyle :: CSS
  , navigationBarHidden :: Boolean
  , shadowHidden :: Boolean
  , style :: CSS
  , tintColor :: String
  , titleTextColor :: String
  , translucent :: Boolean
  , key :: String
  , children :: Array JSX
  )

type NavigatorIOSProps_required   optional = 
  ( initialRoute :: Route
  | optional
  )


navigatorIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (NavigatorIOSProps_optional  )
  => Record ((NavigatorIOSProps_required  ) attrs)
  -> JSX
navigatorIOS props = unsafeCreateNativeElement "NavigatorIOS" props


type PickerIOSItemProps  = 
  ( label :: String
  , value :: String
  , key :: String
  , children :: Array JSX
  )


pickerIOSItem
  :: forall attrs attrs_  
  . Union attrs attrs_ (PickerIOSItemProps  )
  => Record attrs
  -> JSX
pickerIOSItem props = unsafeCreateNativeElement "PickerIOSItem" props
 

pickerIOSItem_ :: Array JSX -> JSX
pickerIOSItem_ children = pickerIOSItem { children }


type PickerIOSProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , itemStyle :: CSS
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , onValueChange :: (EffectFn1 String Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selectedValue :: String
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


pickerIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (PickerIOSProps  )
  => Record attrs
  -> JSX
pickerIOS props = unsafeCreateNativeElement "PickerIOS" props
 

pickerIOS_ :: Array JSX -> JSX
pickerIOS_ children = pickerIOS { children }


type PickerItemProps_optional  = 
  ( color :: String
  , testID :: String
  , value :: Foreign
  , key :: String
  , children :: Array JSX
  )

type PickerItemProps_required   optional = 
  ( label :: String
  | optional
  )


pickerItem
  :: forall attrs attrs_  
  . Union attrs attrs_ (PickerItemProps_optional  )
  => Record ((PickerItemProps_required  ) attrs)
  -> JSX
pickerItem props = unsafeCreateNativeElement "PickerItem" props


type PickerProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , enabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , itemStyle :: CSS
  , mode :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , onValueChange :: (EffectFn2 Foreign Number Unit)
  , pointerEvents :: String
  , prompt :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selectedValue :: Foreign
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , testId :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


picker
  :: forall attrs attrs_  
  . Union attrs attrs_ (PickerProps  )
  => Record attrs
  -> JSX
picker props = unsafeCreateNativeElement "Picker" props
 

picker_ :: Array JSX -> JSX
picker_ children = picker { children }


type PointPropType  = {
    x :: Number
  , y :: Number
}


type ProgressBarAndroidProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , color :: String
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , indeterminate :: Boolean
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pointerEvents :: String
  , progress :: Number
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , styleAttr :: String
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


progressBarAndroid
  :: forall attrs attrs_  
  . Union attrs attrs_ (ProgressBarAndroidProps  )
  => Record attrs
  -> JSX
progressBarAndroid props = unsafeCreateNativeElement "ProgressBarAndroid" props
 

progressBarAndroid_ :: Array JSX -> JSX
progressBarAndroid_ children = progressBarAndroid { children }


type ProgressViewIOSProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


progressViewIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (ProgressViewIOSProps  )
  => Record attrs
  -> JSX
progressViewIOS props = unsafeCreateNativeElement "ProgressViewIOS" props
 

progressViewIOS_ :: Array JSX -> JSX
progressViewIOS_ children = progressViewIOS { children }


type RecyclerViewBackedScrollViewProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
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
  , decelerationRate :: String
  , directionalLockEnabled :: Boolean
  , endFillColor :: String
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: String
  , indicatorStyle :: String
  , invertStickyHeaders :: Boolean
  , isTVSelectable :: Boolean
  , keyboardDismissMode :: String
  , keyboardShouldPersistTaps :: String
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , nestedScrollEnabled :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMomentumScrollBegin :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onMomentumScrollEnd :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onScroll :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onScrollAnimationEnd :: (Effect Unit)
  , onScrollBeginDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onScrollEndDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , snapToEnd :: Boolean
  , snapToInterval :: Number
  , snapToOffsets :: (Array Number)
  , snapToStart :: Boolean
  , stickyHeaderIndices :: (Array Number)
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , zoomScale :: Number
  , key :: String
  , children :: Array JSX
  )


recyclerViewBackedScrollView
  :: forall attrs attrs_  
  . Union attrs attrs_ (RecyclerViewBackedScrollViewProps  )
  => Record attrs
  -> JSX
recyclerViewBackedScrollView props = unsafeCreateNativeElement "RecyclerViewBackedScrollView" props
 

recyclerViewBackedScrollView_ :: Array JSX -> JSX
recyclerViewBackedScrollView_ children = recyclerViewBackedScrollView { children }


type RefreshControlProps_optional  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , colors :: (Array String)
  , enabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onRefresh :: (Effect Unit)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )

type RefreshControlProps_required   optional = 
  ( refreshing :: Boolean
  | optional
  )


refreshControl
  :: forall attrs attrs_  
  . Union attrs attrs_ (RefreshControlProps_optional  )
  => Record ((RefreshControlProps_required  ) attrs)
  -> JSX
refreshControl props = unsafeCreateNativeElement "RefreshControl" props


type Route  = {
    backButtonTitle  :: (Undefinable  String)
  , component  :: (Undefinable  JSX)
  , content  :: (Undefinable  String)
  , id  :: (Undefinable  String)
  , index  :: (Undefinable  Number)
  , message  :: (Undefinable  String)
  , onRightButtonPress  :: (Undefinable  (Effect Unit))
  , passProps  :: (Undefinable  (Object Foreign))
  , rightButtonTitle  :: (Undefinable  String)
  , title  :: (Undefinable  String)
  , wrapperStyle  :: (Undefinable  Foreign)
}


type ScrollViewProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
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
  , decelerationRate :: String
  , directionalLockEnabled :: Boolean
  , endFillColor :: String
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , horizontal :: Boolean
  , importantForAccessibility :: String
  , indicatorStyle :: String
  , invertStickyHeaders :: Boolean
  , isTVSelectable :: Boolean
  , keyboardDismissMode :: String
  , keyboardShouldPersistTaps :: String
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , nestedScrollEnabled :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onContentSizeChange :: (EffectFn2 Number Number Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMomentumScrollBegin :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onMomentumScrollEnd :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onScroll :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onScrollAnimationEnd :: (Effect Unit)
  , onScrollBeginDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onScrollEndDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , snapToEnd :: Boolean
  , snapToInterval :: Number
  , snapToOffsets :: (Array Number)
  , snapToStart :: Boolean
  , stickyHeaderIndices :: (Array Number)
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , zoomScale :: Number
  , key :: String
  , children :: Array JSX
  )


scrollView
  :: forall attrs attrs_  
  . Union attrs attrs_ (ScrollViewProps  )
  => Record attrs
  -> JSX
scrollView props = unsafeCreateNativeElement "ScrollView" props
 

scrollView_ :: Array JSX -> JSX
scrollView_ children = scrollView { children }


type SegmentedControlIOSProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , enabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , momentary :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onChange :: (EffectFn1 (NativeSyntheticEvent NativeSegmentedControlIOSChangeEvent) Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , onValueChange :: (EffectFn1 String Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , selectedIndex :: Number
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tintColor :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , values :: (Array String)
  , key :: String
  , children :: Array JSX
  )


segmentedControlIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (SegmentedControlIOSProps  )
  => Record attrs
  -> JSX
segmentedControlIOS props = unsafeCreateNativeElement "SegmentedControlIOS" props
 

segmentedControlIOS_ :: Array JSX -> JSX
segmentedControlIOS_ children = segmentedControlIOS { children }


type SliderProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , disabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
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
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onSlidingComplete :: (EffectFn1 Number Unit)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , value :: Number
  , key :: String
  , children :: Array JSX
  )


slider
  :: forall attrs attrs_  
  . Union attrs attrs_ (SliderProps  )
  => Record attrs
  -> JSX
slider props = unsafeCreateNativeElement "Slider" props
 

slider_ :: Array JSX -> JSX
slider_ children = slider { children }


type SnapshotViewIOSProps_optional  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )

type SnapshotViewIOSProps_required   optional = 
  ( testIdentifier :: String
  | optional
  )


snapshotViewIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (SnapshotViewIOSProps_optional  )
  => Record ((SnapshotViewIOSProps_required  ) attrs)
  -> JSX
snapshotViewIOS props = unsafeCreateNativeElement "SnapshotViewIOS" props


type StatusBarProps  = 
  ( animated :: Boolean
  , backgroundColor :: String
  , barStyle :: String
  , hidden :: Boolean
  , networkActivityIndicatorVisible :: Boolean
  , showHideTransition :: String
  , translucent :: Boolean
  , key :: String
  , children :: Array JSX
  )


statusBar
  :: forall attrs attrs_  
  . Union attrs attrs_ (StatusBarProps  )
  => Record attrs
  -> JSX
statusBar props = unsafeCreateNativeElement "StatusBar" props
 

statusBar_ :: Array JSX -> JSX
statusBar_ children = statusBar { children }


type SwipeableListViewDataSource  = {
    
}


type SwipeableListViewProps_optional  = 
  ( key :: String
  , children :: Array JSX
  )

type SwipeableListViewProps_required   optional = 
  ( bounceFirstRowOnMount :: Boolean
  , dataSource :: SwipeableListViewDataSource
  , maxSwipeDistance :: Number
  , renderRow :: (EffectFn4 Foreign String String Boolean JSX)
  | optional
  )


swipeableListView
  :: forall attrs attrs_  
  . Union attrs attrs_ (SwipeableListViewProps_optional  )
  => Record ((SwipeableListViewProps_required  ) attrs)
  -> JSX
swipeableListView props = unsafeCreateNativeElement "SwipeableListView" props


type SwitchIOSProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , disabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTintColor :: String
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , onValueChange :: (EffectFn1 Boolean Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , thumbTintColor :: String
  , tintColor :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , value :: Boolean
  , key :: String
  , children :: Array JSX
  )


switchIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (SwitchIOSProps  )
  => Record attrs
  -> JSX
switchIOS props = unsafeCreateNativeElement "SwitchIOS" props
 

switchIOS_ :: Array JSX -> JSX
switchIOS_ children = switchIOS { children }


type SwitchProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , disabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , ios_backgroundColor :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTintColor :: String
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , trackColor :: { false :: String, true :: String }
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , value :: Boolean
  , key :: String
  , children :: Array JSX
  )


switch
  :: forall attrs attrs_  
  . Union attrs attrs_ (SwitchProps  )
  => Record attrs
  -> JSX
switch props = unsafeCreateNativeElement "Switch" props
 

switch_ :: Array JSX -> JSX
switch_ children = switch { children }


type TabBarIOSItemProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , badge :: String
  , badgeColor :: String
  , collapsable :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , icon :: ImageURISource
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onPress :: (Effect Unit)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


tabBarIOSItem
  :: forall attrs attrs_  
  . Union attrs attrs_ (TabBarIOSItemProps  )
  => Record attrs
  -> JSX
tabBarIOSItem props = unsafeCreateNativeElement "TabBarIOSItem" props
 

tabBarIOSItem_ :: Array JSX -> JSX
tabBarIOSItem_ children = tabBarIOSItem { children }


type TabBarIOSProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , barTintColor :: String
  , collapsable :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , itemPositioning :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tintColor :: String
  , translucent :: Boolean
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , unselectedItemTintColor :: String
  , unselectedTintColor :: String
  , key :: String
  , children :: Array JSX
  )


tabBarIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (TabBarIOSProps  )
  => Record attrs
  -> JSX
tabBarIOS props = unsafeCreateNativeElement "TabBarIOS" props
 

tabBarIOS_ :: Array JSX -> JSX
tabBarIOS_ children = tabBarIOS { children }


type TargetedEvent  = {
    target :: Number
}


type TextInputChangeEventData  = {
    eventCount :: Number
  , target :: Number
  , text :: String
}


type TextInputContentSizeChangeEventData  = {
    contentSize :: { width :: Number, height :: Number }
}


type TextInputEndEditingEventData  = {
    text :: String
}


type TextInputFocusEventData  = {
    eventCount :: Number
  , target :: Number
  , text :: String
}


type TextInputKeyPressEventData  = {
    key :: String
}


type TextInputProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , allowFontScaling :: Boolean
  , autoCapitalize :: String
  , autoCompleteType :: String
  , autoCorrect :: Boolean
  , autoFocus :: Boolean
  , blurOnSubmit :: Boolean
  , caretHidden :: Boolean
  , clearButtonMode :: String
  , clearTextOnFocus :: Boolean
  , collapsable :: Boolean
  , contextMenuHidden :: Boolean
  , dataDetectorTypes :: (Array String)
  , defaultValue :: String
  , disableFullscreenUI :: Boolean
  , editable :: Boolean
  , enablesReturnKeyAutomatically :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , inlineImageLeft :: String
  , inlineImagePadding :: Number
  , inputAccessoryViewID :: String
  , isTVSelectable :: Boolean
  , keyboardAppearance :: String
  , keyboardType :: String
  , maxFontSizeMultiplier :: String
  , maxLength :: Number
  , multiline :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , numberOfLines :: Number
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onBlur :: (EffectFn1 (NativeSyntheticEvent TextInputFocusEventData) Unit)
  , onChange :: (EffectFn1 (NativeSyntheticEvent TextInputChangeEventData) Unit)
  , onChangeText :: (EffectFn1 String Unit)
  , onContentSizeChange :: (EffectFn1 (NativeSyntheticEvent TextInputContentSizeChangeEventData) Unit)
  , onEndEditing :: (EffectFn1 (NativeSyntheticEvent TextInputEndEditingEventData) Unit)
  , onFocus :: (EffectFn1 (NativeSyntheticEvent TextInputFocusEventData) Unit)
  , onKeyPress :: (EffectFn1 (NativeSyntheticEvent TextInputKeyPressEventData) Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onScroll :: (EffectFn1 (NativeSyntheticEvent TextInputScrollEventData) Unit)
  , onSelectionChange :: (EffectFn1 (NativeSyntheticEvent TextInputSelectionChangeEventData) Unit)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onSubmitEditing :: (EffectFn1 (NativeSyntheticEvent TextInputSubmitEditingEventData) Unit)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , placeholder :: String
  , placeholderTextColor :: String
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , returnKeyLabel :: String
  , returnKeyType :: String
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
  , textAlignVertical :: String
  , textBreakStrategy :: String
  , textContentType :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , underlineColorAndroid :: String
  , value :: String
  , key :: String
  , children :: Array JSX
  )


textInput
  :: forall attrs attrs_  
  . Union attrs attrs_ (TextInputProps  )
  => Record attrs
  -> JSX
textInput props = unsafeCreateNativeElement "TextInput" props
 

textInput_ :: Array JSX -> JSX
textInput_ children = textInput { children }


type TextInputScrollEventData  = {
    contentOffset :: { x :: Number, y :: Number }
}


type TextInputSelectionChangeEventData  = {
    selection :: { start :: Number, end :: Number }
  , target :: Number
}


type TextInputSubmitEditingEventData  = {
    text :: String
}


type TextProps  = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessible :: Boolean
  , adjustsFontSizeToFit :: Boolean
  , allowFontScaling :: Boolean
  , ellipsizeMode :: String
  , importantForAccessibility :: String
  , lineBreakMode :: String
  , maxFontSizeMultiplier :: String
  , minimumFontScale :: Number
  , nativeID :: String
  , numberOfLines :: Number
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onLongPress :: (EffectFn1 GestureResponderEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onPress :: (EffectFn1 GestureResponderEvent Unit)
  , selectable :: Boolean
  , selectionColor :: String
  , style :: CSS
  , suppressHighlighting :: Boolean
  , testID :: String
  , textBreakStrategy :: String
  , key :: String
  , children :: Array JSX
  )


text
  :: forall attrs attrs_  
  . Union attrs attrs_ (TextProps  )
  => Record attrs
  -> JSX
text props = unsafeCreateNativeElement "Text" props
 

text_ :: Array JSX -> JSX
text_ children = text { children }


type ToolbarAndroidProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , actions :: (Array { title :: String, icon :: ImageURISource, show :: String, showWithText :: Boolean })
  , collapsable :: Boolean
  , contentInsetEnd :: Number
  , contentInsetStart :: Number
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , logo :: ImageURISource
  , nativeID :: String
  , navIcon :: ImageURISource
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onActionSelected :: (EffectFn1 Number Unit)
  , onIconClicked :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


toolbarAndroid
  :: forall attrs attrs_  
  . Union attrs attrs_ (ToolbarAndroidProps  )
  => Record attrs
  -> JSX
toolbarAndroid props = unsafeCreateNativeElement "ToolbarAndroid" props
 

toolbarAndroid_ :: Array JSX -> JSX
toolbarAndroid_ children = toolbarAndroid { children }


type TouchableHighlightProps  = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessible :: Boolean
  , activeOpacity :: Number
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , onAccessibilityTap :: (Effect Unit)
  , onBlur :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit)
  , onFocus :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit)
  , onHideUnderlay :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onLongPress :: (EffectFn1 GestureResponderEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onPress :: (EffectFn1 GestureResponderEvent Unit)
  , onPressIn :: (EffectFn1 GestureResponderEvent Unit)
  , onPressOut :: (EffectFn1 GestureResponderEvent Unit)
  , onShowUnderlay :: (Effect Unit)
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , underlayColor :: String
  , key :: String
  , children :: Array JSX
  )


touchableHighlight
  :: forall attrs attrs_  
  . Union attrs attrs_ (TouchableHighlightProps  )
  => Record attrs
  -> JSX
touchableHighlight props = unsafeCreateNativeElement "TouchableHighlight" props
 

touchableHighlight_ :: Array JSX -> JSX
touchableHighlight_ children = touchableHighlight { children }


type TouchableNativeFeedbackProps  = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessible :: Boolean
  , background :: (Object Foreign)
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , onAccessibilityTap :: (Effect Unit)
  , onBlur :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit)
  , onFocus :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onLongPress :: (EffectFn1 GestureResponderEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onPress :: (EffectFn1 GestureResponderEvent Unit)
  , onPressIn :: (EffectFn1 GestureResponderEvent Unit)
  , onPressOut :: (EffectFn1 GestureResponderEvent Unit)
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , useForeground :: Boolean
  , key :: String
  , children :: Array JSX
  )


touchableNativeFeedback
  :: forall attrs attrs_  
  . Union attrs attrs_ (TouchableNativeFeedbackProps  )
  => Record attrs
  -> JSX
touchableNativeFeedback props = unsafeCreateNativeElement "TouchableNativeFeedback" props
 

touchableNativeFeedback_ :: Array JSX -> JSX
touchableNativeFeedback_ children = touchableNativeFeedback { children }


type TouchableOpacityProps  = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessible :: Boolean
  , activeOpacity :: Number
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , onAccessibilityTap :: (Effect Unit)
  , onBlur :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit)
  , onFocus :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onLongPress :: (EffectFn1 GestureResponderEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onPress :: (EffectFn1 GestureResponderEvent Unit)
  , onPressIn :: (EffectFn1 GestureResponderEvent Unit)
  , onPressOut :: (EffectFn1 GestureResponderEvent Unit)
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , key :: String
  , children :: Array JSX
  )


touchableOpacity
  :: forall attrs attrs_  
  . Union attrs attrs_ (TouchableOpacityProps  )
  => Record attrs
  -> JSX
touchableOpacity props = unsafeCreateNativeElement "TouchableOpacity" props
 

touchableOpacity_ :: Array JSX -> JSX
touchableOpacity_ children = touchableOpacity { children }


type TouchableWithoutFeedbackProps  = 
  ( accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessible :: Boolean
  , delayLongPress :: Number
  , delayPressIn :: Number
  , delayPressOut :: Number
  , disabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , onAccessibilityTap :: (Effect Unit)
  , onBlur :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit)
  , onFocus :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onLongPress :: (EffectFn1 GestureResponderEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onPress :: (EffectFn1 GestureResponderEvent Unit)
  , onPressIn :: (EffectFn1 GestureResponderEvent Unit)
  , onPressOut :: (EffectFn1 GestureResponderEvent Unit)
  , pressRetentionOffset :: Insets
  , style :: CSS
  , testID :: String
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , key :: String
  , children :: Array JSX
  )


touchableWithoutFeedback
  :: forall attrs attrs_  
  . Union attrs attrs_ (TouchableWithoutFeedbackProps  )
  => Record attrs
  -> JSX
touchableWithoutFeedback props = unsafeCreateNativeElement "TouchableWithoutFeedback" props
 

touchableWithoutFeedback_ :: Array JSX -> JSX
touchableWithoutFeedback_ children = touchableWithoutFeedback { children }


type ViewPagerAndroidOnPageScrollEventData  = {
    offset :: Number
  , position :: Number
}


type ViewPagerAndroidOnPageSelectedEventData  = {
    position :: Number
}


type ViewPagerAndroidProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , initialPage :: Number
  , isTVSelectable :: Boolean
  , keyboardDismissMode :: String
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onPageScroll :: (EffectFn1 (NativeSyntheticEvent ViewPagerAndroidOnPageScrollEventData) Unit)
  , onPageScrollStateChanged :: (EffectFn1 String Unit)
  , onPageSelected :: (EffectFn1 (NativeSyntheticEvent ViewPagerAndroidOnPageSelectedEventData) Unit)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pageMargin :: Number
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , scrollEnabled :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


viewPagerAndroid
  :: forall attrs attrs_  
  . Union attrs attrs_ (ViewPagerAndroidProps  )
  => Record attrs
  -> JSX
viewPagerAndroid props = unsafeCreateNativeElement "ViewPagerAndroid" props
 

viewPagerAndroid_ :: Array JSX -> JSX
viewPagerAndroid_ children = viewPagerAndroid { children }


type ViewProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , collapsable :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , importantForAccessibility :: String
  , isTVSelectable :: Boolean
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onMagicTap :: (Effect Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
  , pointerEvents :: String
  , removeClippedSubviews :: Boolean
  , renderToHardwareTextureAndroid :: Boolean
  , shouldRasterizeIOS :: Boolean
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , key :: String
  , children :: Array JSX
  )


view
  :: forall attrs attrs_  
  . Union attrs attrs_ (ViewProps  )
  => Record attrs
  -> JSX
view props = unsafeCreateNativeElement "View" props
 

view_ :: Array JSX -> JSX
view_ children = view { children }

safeAreaView
  :: forall attrs attrs_  
  . Union attrs attrs_ (ViewProps  )
  => Record attrs
  -> JSX
safeAreaView props = unsafeCreateNativeElement "SafeAreaView" props
 

safeAreaView_ :: Array JSX -> JSX
safeAreaView_ children = safeAreaView { children }


type ViewToken  = {
    index :: String
  , isViewable :: Boolean
  , item :: Foreign
  , key :: String
  , section  :: (Undefinable  Foreign)
}


type ViewabilityConfig  = {
    itemVisiblePercentThreshold  :: (Undefinable  Number)
  , minimumViewTime  :: (Undefinable  Number)
  , viewAreaCoveragePercentThreshold  :: (Undefinable  Number)
  , waitForInteraction  :: (Undefinable  Boolean)
}


type ViewabilityConfigCallbackPair  = {
    onViewableItemsChanged :: ((EffectFn1 { viewableItems :: (Array ViewToken), changed :: (Array ViewToken) } Unit))
  , viewabilityConfig :: ViewabilityConfig
}


type WebViewIOSLoadRequestEvent  = {
    canGoBack :: Boolean
  , canGoForward :: Boolean
  , loading :: Boolean
  , lockIdentifier :: Number
  , navigationType :: String
  , target :: Number
  , title :: String
  , url :: String
}


type WebViewMessageEventData  = {
    data :: String
}


type WebViewNativeConfig  = {
    component  :: (Undefinable  Foreign)
  , props  :: (Undefinable  (Object Foreign))
  , viewManager  :: (Undefinable  (Object Foreign))
}


type WebViewProps  = 
  ( accessibilityActions :: (Array String)
  , accessibilityComponentType :: String
  , accessibilityElementsHidden :: Boolean
  , accessibilityHint :: String
  , accessibilityIgnoresInvertColors :: Boolean
  , accessibilityLabel :: String
  , accessibilityLiveRegion :: String
  , accessibilityRole :: String
  , accessibilityStates :: (Array String)
  , accessibilityTraits :: (Array String)
  , accessibilityViewIsModal :: Boolean
  , accessible :: Boolean
  , allowFileAccess :: Boolean
  , allowsInlineMediaPlayback :: Boolean
  , automaticallyAdjustContentInsets :: Boolean
  , bounces :: Boolean
  , collapsable :: Boolean
  , contentInset :: Insets
  , dataDetectorTypes :: (Array String)
  , decelerationRate :: String
  , domStorageEnabled :: Boolean
  , hasTVPreferredFocus :: Boolean
  , hitSlop :: Insets
  , html :: String
  , importantForAccessibility :: String
  , injectedJavaScript :: String
  , isTVSelectable :: Boolean
  , javaScriptEnabled :: Boolean
  , mediaPlaybackRequiresUserAction :: Boolean
  , mixedContentMode :: String
  , nativeConfig :: WebViewNativeConfig
  , nativeID :: String
  , needsOffscreenAlphaCompositing :: Boolean
  , onAccessibilityAction :: (Effect Unit)
  , onAccessibilityTap :: (Effect Unit)
  , onError :: (EffectFn1 NavState Unit)
  , onLayout :: (EffectFn1 LayoutChangeEvent Unit)
  , onLoad :: (EffectFn1 NavState Unit)
  , onLoadEnd :: (EffectFn1 NavState Unit)
  , onLoadStart :: (EffectFn1 NavState Unit)
  , onMagicTap :: (Effect Unit)
  , onMessage :: (EffectFn1 (NativeSyntheticEvent WebViewMessageEventData) Unit)
  , onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onNavigationStateChange :: (EffectFn1 NavState Unit)
  , onResponderEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderGrant :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderMove :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderReject :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderRelease :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderStart :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit)
  , onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean)
  , onShouldStartLoadWithRequest :: (EffectFn1 WebViewIOSLoadRequestEvent Boolean)
  , onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean)
  , onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean)
  , onTouchCancel :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEnd :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchMove :: (EffectFn1 GestureResponderEvent Unit)
  , onTouchStart :: (EffectFn1 GestureResponderEvent Unit)
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
  , source :: (Object Foreign)
  , startInLoadingState :: Boolean
  , style :: CSS
  , testID :: String
  , tvParallaxMagnification :: Number
  , tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number }
  , tvParallaxShiftDistanceX :: Number
  , tvParallaxShiftDistanceY :: Number
  , tvParallaxTiltAngle :: Number
  , url :: String
  , useWebKit :: Boolean
  , userAgent :: String
  , key :: String
  , children :: Array JSX
  )


webView
  :: forall attrs attrs_  
  . Union attrs attrs_ (WebViewProps  )
  => Record attrs
  -> JSX
webView props = unsafeCreateNativeElement "WebView" props
 

webView_ :: Array JSX -> JSX
webView_ children = webView { children }


