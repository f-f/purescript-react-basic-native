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

import React.Basic.Native.Events (NativeSyntheticEvent)
import React.Basic.Native.Internal (unsafeCreateNativeElement)




type ARTClippingRectangleProps  = 
  ( height :: Number,
  opacity :: Number,
  originX :: Number,
  originY :: Number,
  scale :: Number,
  scaleX :: Number,
  scaleY :: Number,
  title :: String,
  visible :: Boolean,
  width :: Number,
  x :: Number,
  y :: Number,
  key :: String,
  children :: Array JSX
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
  ( height :: Number,
  opacity :: Number,
  originX :: Number,
  originY :: Number,
  scale :: Number,
  scaleX :: Number,
  scaleY :: Number,
  title :: String,
  visible :: Boolean,
  width :: Number,
  x :: Number,
  y :: Number,
  key :: String,
  children :: Array JSX
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
  ( fill :: String,
  height :: Number,
  opacity :: Number,
  originX :: Number,
  originY :: Number,
  scale :: Number,
  scaleX :: Number,
  scaleY :: Number,
  stroke :: String,
  strokeCap :: String,
  strokeDash :: (Array Number),
  strokeJoin :: String,
  strokeWidth :: Number,
  title :: String,
  visible :: Boolean,
  width :: Number,
  x :: Number,
  y :: Number,
  key :: String,
  children :: Array JSX
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
  ( style :: CSS,
  key :: String,
  children :: Array JSX
  )

type ARTSurfaceProps_required   optional = 
  ( height :: Number,
  width :: Number
  | optional
  )


surface
  :: forall attrs attrs_  
  . Union attrs attrs_ (ARTSurfaceProps_optional  )
  => Record ((ARTSurfaceProps_required  ) attrs)
  -> JSX
surface props = unsafeCreateNativeElement "Surface" props


type ARTTextProps  = 
  ( alignment :: String,
  fill :: String,
  font :: String,
  opacity :: Number,
  originX :: Number,
  originY :: Number,
  scale :: Number,
  scaleX :: Number,
  scaleY :: Number,
  stroke :: String,
  strokeCap :: String,
  strokeDash :: (Array Number),
  strokeJoin :: String,
  strokeWidth :: Number,
  title :: String,
  visible :: Boolean,
  x :: Number,
  y :: Number,
  key :: String,
  children :: Array JSX
  )


aRTText
  :: forall attrs attrs_  
  . Union attrs attrs_ (ARTTextProps  )
  => Record attrs
  -> JSX
aRTText props = unsafeCreateNativeElement "ARTText" props
 

aRTText_ :: Array JSX -> JSX
aRTText_ children = aRTText { children }



-- | @see https://facebook.github.io/react-native/docs/activityindicatorios.html#props
type ActivityIndicatorIOSProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Whether to show the indicator (true, the default) or hide it (false).
  animating :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | The foreground color of the spinner (default is gray).
  color :: String,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | Whether the indicator should hide when not animating (true by default).
  hidesWhenStopped :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  onLayout :: (EffectFn1 { nativeEvent :: { layout :: { x :: Number, y :: Number, width :: Number, height :: Number } } } Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | Size of the indicator.
  -- | Small has a height of 20, large has a height of 36.
  -- | enum('small', 'large')
  size :: String,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
  )


activityIndicatorIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (ActivityIndicatorIOSProps  )
  => Record attrs
  -> JSX
activityIndicatorIOS props = unsafeCreateNativeElement "ActivityIndicatorIOS" props
 

activityIndicatorIOS_ :: Array JSX -> JSX
activityIndicatorIOS_ children = activityIndicatorIOS { children }



-- | @see https://facebook.github.io/react-native/docs/activityindicator.html#props
type ActivityIndicatorProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Whether to show the indicator (true, the default) or hide it (false).
  animating :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | The foreground color of the spinner (default is gray).
  color :: String,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | Whether the indicator should hide when not animating (true by default).
  hidesWhenStopped :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | Size of the indicator.
  -- | Small has a height of 20, large has a height of 36.
  -- | enum('small', 'large')
  size :: String,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
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
  ( accessibilityLabel :: String,
  color :: String,
  disabled :: Boolean,
  
  -- | Used to locate this button in end-to-end tests.
  testID :: String,
  key :: String,
  children :: Array JSX
  )

type ButtonProps_required   optional = 
  ( onPress :: (EffectFn1 (NativeSyntheticEvent NativeTouchEvent) Unit),
  title :: String
  | optional
  )


button
  :: forall attrs attrs_  
  . Union attrs attrs_ (ButtonProps_optional  )
  => Record ((ButtonProps_required  ) attrs)
  -> JSX
button props = unsafeCreateNativeElement "Button" props


type CheckBoxProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | If true the user won't be able to toggle the checkbox. Default value is false.
  disabled :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Used in case the props change removes the component.
  onChange :: (EffectFn1 Boolean Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Invoked with the new value when the value changes.
  onValueChange :: (EffectFn1 Boolean Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | The value of the checkbox. If true the checkbox will be turned on. Default value is false.
  value :: Boolean,
  key :: String,
  children :: Array JSX
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | The date picker locale.
  locale :: String,
  
  -- | Maximum date.
  -- | Restricts the range of possible date/time values.
  maximumDate :: JSDate,
  
  -- | Maximum date.
  -- | Restricts the range of possible date/time values.
  minimumDate :: JSDate,
  
  -- | enum(1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30)
  -- | The interval at which minutes can be selected.
  minuteInterval :: Number,
  
  -- | enum('date', 'time', 'datetime')
  -- | The date picker mode.
  mode :: String,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | Timezone offset in minutes.
  -- | By default, the date picker will use the device's timezone. With this parameter, it is possible to force a certain timezone offset.
  -- | For instance, to show times in Pacific Standard Time, pass -7 * 60.
  timeZoneOffsetInMinutes :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
  )

type DatePickerIOSProps_required   optional = 
  ( 
  -- | The currently selected date.
  date :: JSDate,
  
  -- | Date change handler.
  -- | This is called when the user changes the date or time in the UI.
  -- | The first and only argument is a Date object representing the new date and time.
  onDateChange :: (EffectFn1 JSDate Unit)
  | optional
  )


datePickerIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (DatePickerIOSProps_optional  )
  => Record ((DatePickerIOSProps_required  ) attrs)
  -> JSX
datePickerIOS props = unsafeCreateNativeElement "DatePickerIOS" props


foreign import data DocumentSelectionState :: Type



-- | @see DrawerLayoutAndroid.android.js
type DrawerLayoutAndroidProps_optional  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | Specifies the background color of the drawer. The default value
  -- | is white. If you want to set the opacity of the drawer, use rgba.
  -- | Example:
  -- | return (
  -- |    <DrawerLayoutAndroid drawerBackgroundColor="rgba(0,0,0,0.5)">
  -- |    </DrawerLayoutAndroid>
  -- | );
  drawerBackgroundColor :: String,
  
  -- | Specifies the lock mode of the drawer. The drawer can be locked
  -- | in 3 states:
  -- | - unlocked (default), meaning that the drawer will respond
  -- |    (open/close) to touch gestures.
  -- | - locked-closed, meaning that the drawer will stay closed and not
  -- |    respond to gestures.
  -- | - locked-open, meaning that the drawer will stay opened and
  -- |    not respond to gestures. The drawer may still be opened and
  -- |    closed programmatically (openDrawer/closeDrawer).
  drawerLockMode :: String,
  
  -- | Specifies the side of the screen from which the drawer will slide in.
  -- | enum(DrawerLayoutAndroid.positions.Left, DrawerLayoutAndroid.positions.Right)
  drawerPosition :: Number,
  
  -- | Specifies the width of the drawer, more precisely the width of the
  -- | view that be pulled in from the edge of the window.
  drawerWidth :: Number,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Determines whether the keyboard gets dismissed in response to a drag.
  -- | - 'none' (the default), drags do not dismiss the keyboard.
  -- | - 'on-drag', the keyboard is dismissed when a drag begins.
  keyboardDismissMode :: String,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Function called whenever the navigation view has been closed.
  onDrawerClose :: (Effect Unit),
  
  -- | Function called whenever the navigation view has been opened.
  onDrawerOpen :: (Effect Unit),
  
  -- | Function called whenever there is an interaction with the navigation view.
  onDrawerSlide :: (EffectFn1 DrawerSlideEvent Unit),
  
  -- | Function called when the drawer state has changed.
  -- | The drawer can be in 3 states:
  -- | - idle, meaning there is no interaction with the navigation
  -- |    view happening at the time
  -- | - dragging, meaning there is currently an interaction with the
  -- |    navigation view
  -- | - settling, meaning that there was an interaction with the
  -- |    navigation view, and the navigation view is now finishing
  -- |    it's closing or opening animation
  onDrawerStateChanged :: (EffectFn1 String Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | Make the drawer take the entire screen and draw the background of
  -- | the status bar to allow it to open over the status bar. It will
  -- | only have an effect on API 21+.
  statusBarBackgroundColor :: String,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
  )


-- | @see DrawerLayoutAndroid.android.js
type DrawerLayoutAndroidProps_required   optional = 
  ( 
  -- | The navigation view that will be rendered to the side of the
  -- | screen and can be pulled in.
  renderNavigationView :: (Effect JSX)
  | optional
  )


drawerLayoutAndroid
  :: forall attrs attrs_  
  . Union attrs attrs_ (DrawerLayoutAndroidProps_optional  )
  => Record ((DrawerLayoutAndroidProps_required  ) attrs)
  -> JSX
drawerLayoutAndroid props = unsafeCreateNativeElement "DrawerLayoutAndroid" props


type DrawerSlideEvent = NativeSyntheticEvent NativeTouchEvent


type FlatListProps_optional itemT = 
  ( 
  -- | Rendered in between each item, but not at the top or bottom
  "ItemSeparatorComponent" :: JSX,
  
  -- | Rendered when the list is empty.
  "ListEmptyComponent" :: JSX,
  
  -- | Rendered at the very end of the list.
  "ListFooterComponent" :: JSX,
  
  -- | Rendered at the very beginning of the list.
  "ListHeaderComponent" :: JSX,
  
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | When true the scroll view bounces horizontally when it reaches the end
  -- | even if the content is smaller than the scroll view itself. The default
  -- | value is true when `horizontal={true}` and false otherwise.
  alwaysBounceHorizontal :: Boolean,
  
  -- | When true the scroll view bounces vertically when it reaches the end
  -- | even if the content is smaller than the scroll view itself. The default
  -- | value is false when `horizontal={true}` and true otherwise.
  alwaysBounceVertical :: Boolean,
  
  -- | Controls whether iOS should automatically adjust the content inset for scroll views that are placed behind a navigation bar or tab bar/ toolbar.
  -- | The default value is true.
  automaticallyAdjustContentInsets :: Boolean,
  
  -- | When true the scroll view bounces when it reaches the end of the
  -- | content if the content is larger then the scroll view along the axis of
  -- | the scroll direction. When false it disables all bouncing even if
  -- | the `alwaysBounce*` props are true. The default value is true.
  bounces :: Boolean,
  
  -- | When true gestures can drive zoom past min/max and the zoom will animate
  -- | to the min/max value at gesture end otherwise the zoom will not exceed
  -- | the limits.
  bouncesZoom :: Boolean,
  
  -- | When false once tracking starts won't try to drag if the touch moves.
  -- | The default value is true.
  canCancelContentTouches :: Boolean,
  
  -- | When true the scroll view automatically centers the content when the
  -- | content is smaller than the scroll view bounds; when the content is
  -- | larger than the scroll view this property has no effect. The default
  -- | value is false.
  centerContent :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | Optional custom style for multi-item rows generated when numColumns > 1
  columnWrapperStyle :: CSS,
  
  -- | These styles will be applied to the scroll view content container which
  -- | wraps all of the child views. Example:
  -- |    return (
  -- |      <ScrollView contentContainerStyle={styles.contentContainer}>
  -- |      </ScrollView>
  -- |    );
  -- |    ...
  -- |    const styles = StyleSheet.create({
  -- |      contentContainer: {
  -- |        paddingVertical: 20
  -- |      }
  -- |    });
  contentContainerStyle :: CSS,
  
  -- | The amount by which the scroll view content is inset from the edges of the scroll view.
  -- | Defaults to {0, 0, 0, 0}.
  contentInset :: Insets,
  
  -- | This property specifies how the safe area insets are used to modify the content area of the scroll view.
  -- | The default value of this property must be 'automatic'. But the default value is 'never' until RN@0.51.
  contentInsetAdjustmentBehavior :: String,
  
  -- | Used to manually set the starting scroll offset.
  -- | The default value is {x: 0, y: 0}
  contentOffset :: PointPropType,
  
  -- | `debug` will turn on extra logging and visual overlays to aid with debugging both usage and
  -- | implementation, but with a significant perf hit.
  debug :: Boolean,
  
  -- | A floating-point number that determines how quickly the scroll view
  -- | decelerates after the user lifts their finger. Reasonable choices include
  -- |    - Normal: 0.998 (the default)
  -- |    - Fast: 0.9
  decelerationRate :: String,
  
  -- | When true the ScrollView will try to lock to only vertical or horizontal
  -- | scrolling while dragging.  The default value is false.
  directionalLockEnabled :: Boolean,
  
  -- | DEPRECATED: Virtualization provides significant performance and memory optimizations, but fully
  -- | unmounts react instances that are outside of the render window. You should only need to disable
  -- | this for debugging purposes.
  disableVirtualization :: Boolean,
  
  -- | Sometimes a scrollview takes up more space than its content fills.
  -- | When this is the case, this prop will fill the rest of the
  -- | scrollview with a color to avoid setting a background and creating
  -- | unnecessary overdraw. This is an advanced optimization that is not
  -- | needed in the general case.
  endFillColor :: String,
  
  -- | A marker property for telling the list to re-render (since it implements PureComponent).
  -- | If any of your `renderItem`, Header, Footer, etc. functions depend on anything outside of the `data` prop,
  -- | stick it here and treat it immutably.
  extraData :: Foreign,
  
  -- | A generic accessor for extracting an item from any sort of data blob.
  getItem :: (EffectFn2 Foreign Number itemT),
  
  -- | Determines how many items are in the data blob.
  getItemCount :: (EffectFn1 Foreign Number),
  
  -- | `getItemLayout` is an optional optimization that lets us skip measurement of dynamic
  -- | content if you know the height of items a priori. getItemLayout is the most efficient,
  -- | and is easy to use if you have fixed height items, for example:
  -- | ```
  -- |      * getItemLayout={(data, index) => (
  -- |      *   {length: ITEM_HEIGHT, offset: ITEM_HEIGHT * index, index}
  -- |      * )}
  -- |      * ```
  -- | Remember to include separator length (height or width) in your offset calculation if you specify
  -- | `ItemSeparatorComponent`.
  getItemLayout :: (EffectFn2 (Array itemT) Number { length :: Number, offset :: Number, index :: Number }),
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | If true, renders items next to each other horizontally instead of stacked vertically.
  horizontal :: Boolean,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | The style of the scroll indicators.
  -- | - default (the default), same as black.
  -- | - black, scroll indicator is black. This style is good against
  -- |    a white content background.
  -- | - white, scroll indicator is white. This style is good against
  -- |    a black content background.
  indicatorStyle :: String,
  
  -- | How many items to render in the initial batch
  initialNumToRender :: Number,
  
  -- | Instead of starting at the top with the first item, start at initialScrollIndex
  initialScrollIndex :: Number,
  
  -- | If sticky headers should stick at the bottom instead of the top of the
  -- | ScrollView. This is usually used with inverted ScrollViews.
  invertStickyHeaders :: Boolean,
  
  -- | Reverses the direction of scroll. Uses scale transforms of -1.
  inverted :: Boolean,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to extract a unique key for a given item at the specified index. Key is used for caching
  -- | and as the react key to track item re-ordering. The default extractor checks `item.key`, then
  -- | falls back to using the index, like React does.
  keyExtractor :: (EffectFn2 itemT Number String),
  
  -- | Determines whether the keyboard gets dismissed in response to a drag.
  -- |    - 'none' (the default) drags do not dismiss the keyboard.
  -- |    - 'onDrag' the keyboard is dismissed when a drag begins.
  -- |    - 'interactive' the keyboard is dismissed interactively with the drag
  -- |      and moves in synchrony with the touch; dragging upwards cancels the
  -- |      dismissal.
  keyboardDismissMode :: String,
  
  -- | Determines when the keyboard should stay visible after a tap.
  -- | - 'never' (the default), tapping outside of the focused text input when the keyboard is up dismisses the keyboard. When this happens, children won't receive the tap.
  -- | - 'always', the keyboard will not dismiss automatically, and the scroll view will not catch taps, but children of the scroll view can catch taps.
  -- | - 'handled', the keyboard will not dismiss automatically when the tap was handled by a children, (or captured by an ancestor).
  -- | - false, deprecated, use 'never' instead
  -- | - true, deprecated, use 'always' instead
  keyboardShouldPersistTaps :: String,
  
  -- | Uses legacy MetroListView instead of default VirtualizedSectionList
  legacyImplementation :: Boolean,
  listKey :: String,
  
  -- | The maximum number of items to render in each incremental render batch. The more rendered at
  -- | once, the better the fill rate, but responsiveness my suffer because rendering content may
  -- | interfere with responding to button taps or other interactions.
  maxToRenderPerBatch :: Number,
  
  -- | The maximum allowed zoom scale. The default value is 1.0.
  maximumZoomScale :: Number,
  
  -- | The minimum allowed zoom scale. The default value is 1.0.
  minimumZoomScale :: Number,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | Enables nested scrolling for Android API level 21+. Nested scrolling is supported by default on iOS.
  nestedScrollEnabled :: Boolean,
  
  -- | Multiple columns can only be rendered with `horizontal={false}` and will zig-zag like a `flexWrap` layout.
  -- | Items should all be the same height - masonry layouts are not supported.
  numColumns :: Number,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Called when scrollable content view of the ScrollView changes.
  -- | Handler function is passed the content width and content height as parameters: (contentWidth, contentHeight)
  -- | It's implemented using onLayout handler attached to the content container which this ScrollView renders.
  onContentSizeChange :: (EffectFn2 Number Number Unit),
  
  -- | Called once when the scroll position gets within onEndReachedThreshold of the rendered content.
  onEndReached :: ((EffectFn1 { distanceFromEnd :: Number } Unit)),
  
  -- | How far from the end (in units of visible length of the list) the bottom edge of the
  -- | list must be from the end of the content to trigger the `onEndReached` callback.
  -- | Thus a value of 0.5 will trigger `onEndReached` when the end of the content is
  -- | within half the visible length of the list.
  onEndReachedThreshold :: String,
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Fires when scroll view has begun moving
  onMomentumScrollBegin :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Fires when scroll view has finished moving
  onMomentumScrollEnd :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If provided, a standard RefreshControl will be added for "Pull to Refresh" functionality.
  -- | Make sure to also set the refreshing prop correctly.
  onRefresh :: ((Effect Unit)),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Fires at most once per frame during scrolling.
  -- | The frequency of the events can be contolled using the scrollEventThrottle prop.
  onScroll :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Called when a scrolling animation ends.
  onScrollAnimationEnd :: (Effect Unit),
  
  -- | Fires if a user initiates a scroll gesture.
  onScrollBeginDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Fires when a user has finished scrolling.
  onScrollEndDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Used to handle failures when scrolling to an index that has not been measured yet.
  -- | Recommended action is to either compute your own offset and `scrollTo` it, or scroll as far
  -- | as possible and then try again after more items have been rendered.
  onScrollToIndexFailed :: (EffectFn1 { index :: Number, highestMeasuredFrameIndex :: Number, averageItemLength :: Number } Unit),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Called when the viewability of rows changes, as defined by the `viewablePercentThreshold` prop.
  onViewableItemsChanged :: ((EffectFn1 { viewableItems :: (Array ViewToken), changed :: (Array ViewToken) } Unit)),
  
  -- | Used to override default value of overScroll mode.
  -- |    Possible values:
  -- |      - 'auto' - Default value, allow a user to over-scroll this view only if the content is large enough to meaningfully scroll.
  -- |      - 'always' - Always allow a user to over-scroll this view.
  -- |      - 'never' - Never allow a user to over-scroll this view.
  overScrollMode :: String,
  
  -- | When true the scroll view stops on multiples of the scroll view's size
  -- | when scrolling. This can be used for horizontal pagination. The default
  -- | value is false.
  pagingEnabled :: Boolean,
  
  -- | When true, ScrollView allows use of pinch gestures to zoom in and out.
  -- | The default value is true.
  pinchGestureEnabled :: Boolean,
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | Set this when offset is needed for the loading indicator to show correctly.
  -- | @platform android
  progressViewOffset :: Number,
  
  -- | A RefreshControl component, used to provide pull-to-refresh
  -- | functionality for the ScrollView.
  refreshControl :: JSX,
  
  -- | Set this true while waiting for new data from a refresh.
  refreshing :: String,
  
  -- | Note: may have bugs (missing content) in some circumstances - use at your own risk.
  -- | This may improve scroll performance for large lists.
  removeClippedSubviews :: Boolean,
  
  -- | Render a custom scroll component, e.g. with a differently styled `RefreshControl`.
  renderScrollComponent :: (EffectFn1 (Record ScrollViewProps) JSX),
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | When false, the content does not scroll. The default value is true
  scrollEnabled :: Boolean,
  
  -- | This controls how often the scroll event will be fired while scrolling (in events per seconds).
  -- | A higher number yields better accuracy for code that is tracking the scroll position,
  -- | but can lead to scroll performance problems due to the volume of information being send over the bridge.
  -- | The default value is zero, which means the scroll event will be sent only once each time the view is scrolled.
  scrollEventThrottle :: Number,
  
  -- | The amount by which the scroll view indicators are inset from the edges of the scroll view.
  -- | This should normally be set to the same value as the contentInset.
  -- | Defaults to {0, 0, 0, 0}.
  scrollIndicatorInsets :: Insets,
  
  -- | Tag used to log scroll performance on this scroll view. Will force
  -- | momentum events to be turned on (see sendMomentumEvents). This doesn't do
  -- | anything out of the box and you need to implement a custom native
  -- | FpsListener for it to be useful.
  -- | @platform android
  scrollPerfTag :: String,
  
  -- | When true the scroll view scrolls to top when the status bar is tapped.
  -- | The default value is true.
  scrollsToTop :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | When true, shows a horizontal scroll indicator.
  showsHorizontalScrollIndicator :: Boolean,
  
  -- | When true, shows a vertical scroll indicator.
  showsVerticalScrollIndicator :: Boolean,
  
  -- | When `snapToInterval` is set, `snapToAlignment` will define the relationship of the the snapping to the scroll view.
  -- |       - `start` (the default) will align the snap at the left (horizontal) or top (vertical)
  -- |       - `center` will align the snap in the center
  -- |       - `end` will align the snap at the right (horizontal) or bottom (vertical)
  snapToAlignment :: String,
  
  -- | Use in conjuction with `snapToOffsets`. By default, the end of the list counts as a snap
  -- | offset. Set `snapToEnd` to false to disable this behavior and allow the list to scroll freely
  -- | between its end and the last `snapToOffsets` offset. The default value is true.
  snapToEnd :: Boolean,
  
  -- | When set, causes the scroll view to stop at multiples of the value of `snapToInterval`.
  -- | This can be used for paginating through children that have lengths smaller than the scroll view.
  -- | Used in combination with `snapToAlignment` and `decelerationRate="fast"`. Overrides less
  -- | configurable `pagingEnabled` prop.
  snapToInterval :: Number,
  
  -- | When set, causes the scroll view to stop at the defined offsets. This can be used for
  -- | paginating through variously sized children that have lengths smaller than the scroll view.
  -- | Typically used in combination with `decelerationRate="fast"`. Overrides less configurable
  -- | `pagingEnabled` and `snapToInterval` props.
  snapToOffsets :: (Array Number),
  
  -- | Use in conjuction with `snapToOffsets`. By default, the beginning of the list counts as a
  -- | snap offset. Set `snapToStart` to false to disable this behavior and allow the list to scroll
  -- | freely between its start and the first `snapToOffsets` offset. The default value is true.
  snapToStart :: Boolean,
  
  -- | An array of child indices determining which children get docked to the
  -- | top of the screen when scrolling. For example passing
  -- | `stickyHeaderIndices={[0]}` will cause the first child to be fixed to the
  -- | top of the scroll view. This property is not supported in conjunction
  -- | with `horizontal={true}`.
  stickyHeaderIndices :: (Array Number),
  
  -- | Style
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | Amount of time between low-pri item render batches, e.g. for rendering items quite a ways off
  -- | screen. Similar fill rate/responsiveness tradeoff as `maxToRenderPerBatch`.
  updateCellsBatchingPeriod :: Number,
  
  -- | See `ViewabilityHelper` for flow type and further documentation.
  viewabilityConfig :: Foreign,
  viewabilityConfigCallbackPairs :: (Array ViewabilityConfigCallbackPair),
  
  -- | Determines the maximum number of items rendered outside of the visible area, in units of
  -- | visible lengths. So if your list fills the screen, then `windowSize={21}` (the default) will
  -- | render the visible screen area plus up to 10 screens above and 10 below the viewport. Reducing
  -- | this number will reduce memory consumption and may improve performance, but will increase the
  -- | chance that fast scrolling may reveal momentary blank areas of unrendered content.
  windowSize :: Number,
  
  -- | The current scale of the scroll view content. The default value is 1.0.
  zoomScale :: Number,
  key :: String,
  children :: Array JSX
  )

type FlatListProps_required itemT  optional = 
  ( 
  -- | For simplicity, data is just a plain array. If you want to use something else,
  -- | like an immutable list, use the underlying VirtualizedList directly.
  data :: (Array itemT),
  
  -- | Takes an item from data and renders it into the list. Typical usage:
  -- | ```
  -- |      * _renderItem = ({item}) => (
  -- |      *   <TouchableOpacity onPress={() => this._onPress(item)}>
  -- |      *     <Text>{item.title}</Text>
  -- |      *   <TouchableOpacity/>
  -- |      * );
  -- |      * ...
  -- |      * <FlatList data={[{title: 'Title Text', key: 'item1'}]} renderItem={this._renderItem} />
  -- |      * ```
  -- | Provides additional metadata like `index` if you need it.
  renderItem :: (EffectFn1 (ListRenderItemInfo itemT) JSX)
  | optional
  )


flatList
  :: forall attrs attrs_ itemT 
  . Union attrs attrs_ (FlatListProps_optional itemT )
  => Record ((FlatListProps_required itemT ) attrs)
  -> JSX
flatList props = unsafeCreateNativeElement "FlatList" props


type GestureResponderEvent = NativeSyntheticEvent NativeTouchEvent


type ImageBackgroundProps_optional  = 
  ( 
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | blurRadius: the blur radius of the blur filter added to the image
  -- | @platform ios
  blurRadius :: Number,
  borderBottomLeftRadius :: Number,
  borderBottomRightRadius :: Number,
  borderRadius :: Number,
  borderTopLeftRadius :: Number,
  borderTopRightRadius :: Number,
  
  -- | When the image is resized, the corners of the size specified by capInsets will stay a fixed size,
  -- | but the center content and borders of the image will be stretched.
  -- | This is useful for creating resizable rounded buttons, shadows, and other resizable assets.
  -- | More info on Apple documentation
  capInsets :: Insets,
  
  -- | A static image to display while downloading the final image off the network.
  defaultSource :: ImageURISource,
  
  -- | Duration of fade in animation.
  fadeDuration :: Number,
  
  -- | Required if loading images via 'uri' from drawable folder on Android
  -- | Explanation: https://medium.com/@adamjacobb/react-native-performance-images-adf5843e120
  height :: Number,
  imageStyle :: CSS,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | similarly to `source`, this property represents the resource used to render
  -- | the loading indicator for the image, displayed until image is ready to be
  -- | displayed, typically after when it got downloaded from network.
  loadingIndicatorSource :: ImageURISource,
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on load error with {nativeEvent: {error}}
  onError :: (EffectFn1 (NativeSyntheticEvent ImageErrorEventData) Unit),
  
  -- | onLayout function
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height} }}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | Invoked when load completes successfully
  -- | { source: { url, height, width } }.
  onLoad :: (EffectFn1 (NativeSyntheticEvent ImageLoadEventData) Unit),
  
  -- | Invoked when load either succeeds or fails
  onLoadEnd :: (Effect Unit),
  
  -- | Invoked on load start
  onLoadStart :: (Effect Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Invoked when a partial load of the image is complete. The definition of
  -- | what constitutes a "partial load" is loader specific though this is meant
  -- | for progressive JPEG loads.
  -- | @platform ios
  onPartialLoad :: (Effect Unit),
  
  -- | Invoked on download progress with {nativeEvent: {loaded, total}}
  onProgress :: (EffectFn1 (NativeSyntheticEvent ImageProgressEventDataIOS) Unit),
  progressiveRenderingEnabled :: Boolean,
  
  -- | The mechanism that should be used to resize the image when the image's dimensions
  -- | differ from the image view's dimensions. Defaults to `auto`.
  -- | - `auto`: Use heuristics to pick between `resize` and `scale`.
  -- | - `resize`: A software operation which changes the encoded image in memory before it
  -- | gets decoded. This should be used instead of `scale` when the image is much larger
  -- | than the view.
  -- | - `scale`: The image gets drawn downscaled or upscaled. Compared to `resize`, `scale` is
  -- | faster (usually hardware accelerated) and produces higher quality images. This
  -- | should be used if the image is smaller than the view. It should also be used if the
  -- | image is slightly bigger than the view.
  -- | More details about `resize` and `scale` can be found at http://frescolib.org/docs/resizing-rotating.html.
  -- | @platform android
  resizeMethod :: String,
  
  -- | Determines how to resize the image when the frame doesn't match the raw
  -- | image dimensions.
  -- | 'cover': Scale the image uniformly (maintain the image's aspect ratio)
  -- | so that both dimensions (width and height) of the image will be equal
  -- | to or larger than the corresponding dimension of the view (minus padding).
  -- | 'contain': Scale the image uniformly (maintain the image's aspect ratio)
  -- | so that both dimensions (width and height) of the image will be equal to
  -- | or less than the corresponding dimension of the view (minus padding).
  -- | 'stretch': Scale width and height independently, This may change the
  -- | aspect ratio of the src.
  -- | 'repeat': Repeat the image to cover the frame of the view.
  -- | The image will keep it's size and aspect ratio. (iOS only)
  -- | 'center': Scale the image down so that it is completely visible,
  -- | if bigger than the area of the view.
  -- | The image will not be scaled up.
  resizeMode :: String,
  style :: CSS,
  
  -- | A unique identifier for this element to be used in UI Automation testing scripts.
  testID :: String,
  
  -- | Required if loading images via 'uri' from drawable folder on Android.
  -- | Explanation: https://medium.com/@adamjacobb/react-native-performance-images-adf5843e120
  width :: Number,
  key :: String,
  children :: Array JSX
  )

type ImageBackgroundProps_required   optional = 
  ( 
  -- | The image source (either a remote URL or a local file resource).
  -- | This prop can also contain several remote URLs, specified together with their width and height and potentially with scale/other URI arguments.
  -- | The native side will then choose the best uri to display based on the measured size of the image container.
  -- | A cache property can be added to control how networked request interacts with the local cache.
  -- | The currently supported formats are png, jpg, jpeg, bmp, gif, webp (Android only), psd (iOS only).
  source :: (Array ImageURISource)
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
  ( 
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | blurRadius: the blur radius of the blur filter added to the image
  -- | @platform ios
  blurRadius :: Number,
  borderBottomLeftRadius :: Number,
  borderBottomRightRadius :: Number,
  borderRadius :: Number,
  borderTopLeftRadius :: Number,
  borderTopRightRadius :: Number,
  
  -- | When the image is resized, the corners of the size specified by capInsets will stay a fixed size,
  -- | but the center content and borders of the image will be stretched.
  -- | This is useful for creating resizable rounded buttons, shadows, and other resizable assets.
  -- | More info on Apple documentation
  capInsets :: Insets,
  
  -- | A static image to display while downloading the final image off the network.
  defaultSource :: ImageURISource,
  
  -- | Duration of fade in animation.
  fadeDuration :: Number,
  
  -- | Required if loading images via 'uri' from drawable folder on Android
  -- | Explanation: https://medium.com/@adamjacobb/react-native-performance-images-adf5843e120
  height :: Number,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | similarly to `source`, this property represents the resource used to render
  -- | the loading indicator for the image, displayed until image is ready to be
  -- | displayed, typically after when it got downloaded from network.
  loadingIndicatorSource :: ImageURISource,
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on load error with {nativeEvent: {error}}
  onError :: (EffectFn1 (NativeSyntheticEvent ImageErrorEventData) Unit),
  
  -- | onLayout function
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height} }}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | Invoked when load completes successfully
  -- | { source: { url, height, width } }.
  onLoad :: (EffectFn1 (NativeSyntheticEvent ImageLoadEventData) Unit),
  
  -- | Invoked when load either succeeds or fails
  onLoadEnd :: (Effect Unit),
  
  -- | Invoked on load start
  onLoadStart :: (Effect Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Invoked when a partial load of the image is complete. The definition of
  -- | what constitutes a "partial load" is loader specific though this is meant
  -- | for progressive JPEG loads.
  -- | @platform ios
  onPartialLoad :: (Effect Unit),
  
  -- | Invoked on download progress with {nativeEvent: {loaded, total}}
  onProgress :: (EffectFn1 (NativeSyntheticEvent ImageProgressEventDataIOS) Unit),
  progressiveRenderingEnabled :: Boolean,
  
  -- | The mechanism that should be used to resize the image when the image's dimensions
  -- | differ from the image view's dimensions. Defaults to `auto`.
  -- | - `auto`: Use heuristics to pick between `resize` and `scale`.
  -- | - `resize`: A software operation which changes the encoded image in memory before it
  -- | gets decoded. This should be used instead of `scale` when the image is much larger
  -- | than the view.
  -- | - `scale`: The image gets drawn downscaled or upscaled. Compared to `resize`, `scale` is
  -- | faster (usually hardware accelerated) and produces higher quality images. This
  -- | should be used if the image is smaller than the view. It should also be used if the
  -- | image is slightly bigger than the view.
  -- | More details about `resize` and `scale` can be found at http://frescolib.org/docs/resizing-rotating.html.
  -- | @platform android
  resizeMethod :: String,
  
  -- | Determines how to resize the image when the frame doesn't match the raw
  -- | image dimensions.
  -- | 'cover': Scale the image uniformly (maintain the image's aspect ratio)
  -- | so that both dimensions (width and height) of the image will be equal
  -- | to or larger than the corresponding dimension of the view (minus padding).
  -- | 'contain': Scale the image uniformly (maintain the image's aspect ratio)
  -- | so that both dimensions (width and height) of the image will be equal to
  -- | or less than the corresponding dimension of the view (minus padding).
  -- | 'stretch': Scale width and height independently, This may change the
  -- | aspect ratio of the src.
  -- | 'repeat': Repeat the image to cover the frame of the view.
  -- | The image will keep it's size and aspect ratio. (iOS only)
  -- | 'center': Scale the image down so that it is completely visible,
  -- | if bigger than the area of the view.
  -- | The image will not be scaled up.
  resizeMode :: String,
  
  -- | Style
  style :: CSS,
  
  -- | A unique identifier for this element to be used in UI Automation testing scripts.
  testID :: String,
  
  -- | Required if loading images via 'uri' from drawable folder on Android.
  -- | Explanation: https://medium.com/@adamjacobb/react-native-performance-images-adf5843e120
  width :: Number,
  key :: String,
  children :: Array JSX
  )

type ImageProps_required   optional = 
  ( 
  -- | The image source (either a remote URL or a local file resource).
  -- | This prop can also contain several remote URLs, specified together with their width and height and potentially with scale/other URI arguments.
  -- | The native side will then choose the best uri to display based on the measured size of the image container.
  -- | A cache property can be added to control how networked request interacts with the local cache.
  -- | The currently supported formats are png, jpg, jpeg, bmp, gif, webp (Android only), psd (iOS only).
  source :: (Array ImageURISource)
  | optional
  )


image
  :: forall attrs attrs_  
  . Union attrs attrs_ (ImageProps_optional  )
  => Record ((ImageProps_required  ) attrs)
  -> JSX
image props = unsafeCreateNativeElement "Image" props


type ImageURISource  = {
    
  -- | `body` is the HTTP body to send with the request. This must be a valid
  -- | UTF-8 string, and will be sent exactly as specified, with no
  -- | additional encoding (e.g. URL-escaping or base64) applied.
  body  :: (Undefinable  String)
  , 
  -- | `bundle` is the iOS asset bundle which the image is included in. This
  -- | will default to [NSBundle mainBundle] if not set.
  -- | @platform ios
  bundle  :: (Undefinable  String)
  , 
  -- | `cache` determines how the requests handles potentially cached
  -- | responses.
  -- | - `default`: Use the native platforms default strategy. `useProtocolCachePolicy` on iOS.
  -- | - `reload`: The data for the URL will be loaded from the originating source.
  -- | No existing cache data should be used to satisfy a URL load request.
  -- | - `force-cache`: The existing cached data will be used to satisfy the request,
  -- | regardless of its age or expiration date. If there is no existing data in the cache
  -- | corresponding the request, the data is loaded from the originating source.
  -- | - `only-if-cached`: The existing cache data will be used to satisfy a request, regardless of
  -- | its age or expiration date. If there is no existing data in the cache corresponding
  -- | to a URL load request, no attempt is made to load the data from the originating source,
  -- | and the load is considered to have failed.
  -- | @platform ios
  cache  :: (Undefinable  String)
  , 
  -- | `headers` is an object representing the HTTP headers to send along with the
  -- | request for a remote image.
  headers  :: (Undefinable  (Object Foreign))
  , height  :: (Undefinable  Number)
  , 
  -- | `method` is the HTTP Method to use. Defaults to GET if not specified.
  method  :: (Undefinable  String)
  , 
  -- | `scale` is used to indicate the scale factor of the image. Defaults to 1.0 if
  -- | unspecified, meaning that one image pixel equates to one display point / DIP.
  scale  :: (Undefinable  Number)
  , 
  -- | `uri` is a string representing the resource identifier for the image, which
  -- | could be an http address, a local file path, or the name of a static image
  -- | resource (which should be wrapped in the `require('./path/to/image.png')`
  -- | function).
  uri  :: (Undefinable  String)
  , 
  -- | `width` and `height` can be specified if known at build time, in which case
  -- | these will be used to set the default `<Image/>` component dimensions.
  width  :: (Undefinable  Number)
}


type InputAccessoryViewProps  = 
  ( backgroundColor :: String,
  
  -- | An ID which is used to associate this InputAccessoryView to specified TextInput(s).
  nativeID :: String,
  style :: CSS,
  key :: String,
  children :: Array JSX
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  behavior :: String,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | The style of the content container(View) when behavior is 'position'.
  contentContainerStyle :: CSS,
  
  -- | Enables or disables the KeyboardAvoidingView.
  -- | Default is true
  enabled :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | This is the distance between the top of the user screen and the react native view,
  -- | may be non-zero in some use cases.
  keyboardVerticalOffset :: Number,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
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


foreign import data ListViewDataSource :: Type



-- | @see https://facebook.github.io/react-native/docs/listview.html#props
type ListViewProps_optional  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | When true the scroll view bounces horizontally when it reaches the end
  -- | even if the content is smaller than the scroll view itself. The default
  -- | value is true when `horizontal={true}` and false otherwise.
  alwaysBounceHorizontal :: Boolean,
  
  -- | When true the scroll view bounces vertically when it reaches the end
  -- | even if the content is smaller than the scroll view itself. The default
  -- | value is false when `horizontal={true}` and true otherwise.
  alwaysBounceVertical :: Boolean,
  
  -- | Controls whether iOS should automatically adjust the content inset for scroll views that are placed behind a navigation bar or tab bar/ toolbar.
  -- | The default value is true.
  automaticallyAdjustContentInsets :: Boolean,
  
  -- | When true the scroll view bounces when it reaches the end of the
  -- | content if the content is larger then the scroll view along the axis of
  -- | the scroll direction. When false it disables all bouncing even if
  -- | the `alwaysBounce*` props are true. The default value is true.
  bounces :: Boolean,
  
  -- | When true gestures can drive zoom past min/max and the zoom will animate
  -- | to the min/max value at gesture end otherwise the zoom will not exceed
  -- | the limits.
  bouncesZoom :: Boolean,
  
  -- | When false once tracking starts won't try to drag if the touch moves.
  -- | The default value is true.
  canCancelContentTouches :: Boolean,
  
  -- | When true the scroll view automatically centers the content when the
  -- | content is smaller than the scroll view bounds; when the content is
  -- | larger than the scroll view this property has no effect. The default
  -- | value is false.
  centerContent :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | These styles will be applied to the scroll view content container which
  -- | wraps all of the child views. Example:
  -- |    return (
  -- |      <ScrollView contentContainerStyle={styles.contentContainer}>
  -- |      </ScrollView>
  -- |    );
  -- |    ...
  -- |    const styles = StyleSheet.create({
  -- |      contentContainer: {
  -- |        paddingVertical: 20
  -- |      }
  -- |    });
  contentContainerStyle :: CSS,
  
  -- | The amount by which the scroll view content is inset from the edges of the scroll view.
  -- | Defaults to {0, 0, 0, 0}.
  contentInset :: Insets,
  
  -- | This property specifies how the safe area insets are used to modify the content area of the scroll view.
  -- | The default value of this property must be 'automatic'. But the default value is 'never' until RN@0.51.
  contentInsetAdjustmentBehavior :: String,
  
  -- | Used to manually set the starting scroll offset.
  -- | The default value is {x: 0, y: 0}
  contentOffset :: PointPropType,
  
  -- | A floating-point number that determines how quickly the scroll view
  -- | decelerates after the user lifts their finger. Reasonable choices include
  -- |    - Normal: 0.998 (the default)
  -- |    - Fast: 0.9
  decelerationRate :: String,
  
  -- | When true the ScrollView will try to lock to only vertical or horizontal
  -- | scrolling while dragging.  The default value is false.
  directionalLockEnabled :: Boolean,
  
  -- | Flag indicating whether empty section headers should be rendered.
  -- | In the future release empty section headers will be rendered by
  -- | default, and the flag will be deprecated. If empty sections are not
  -- | desired to be rendered their indices should be excluded from
  -- | sectionID object.
  enableEmptySections :: Boolean,
  
  -- | Sometimes a scrollview takes up more space than its content fills.
  -- | When this is the case, this prop will fill the rest of the
  -- | scrollview with a color to avoid setting a background and creating
  -- | unnecessary overdraw. This is an advanced optimization that is not
  -- | needed in the general case.
  endFillColor :: String,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | When true the scroll view's children are arranged horizontally in a row
  -- | instead of vertically in a column. The default value is false.
  horizontal :: Boolean,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | The style of the scroll indicators.
  -- | - default (the default), same as black.
  -- | - black, scroll indicator is black. This style is good against
  -- |    a white content background.
  -- | - white, scroll indicator is white. This style is good against
  -- |    a black content background.
  indicatorStyle :: String,
  
  -- | How many rows to render on initial component mount.  Use this to make
  -- | it so that the first screen worth of data apears at one time instead of
  -- | over the course of multiple frames.
  initialListSize :: Number,
  
  -- | If sticky headers should stick at the bottom instead of the top of the
  -- | ScrollView. This is usually used with inverted ScrollViews.
  invertStickyHeaders :: Boolean,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Determines whether the keyboard gets dismissed in response to a drag.
  -- |    - 'none' (the default) drags do not dismiss the keyboard.
  -- |    - 'onDrag' the keyboard is dismissed when a drag begins.
  -- |    - 'interactive' the keyboard is dismissed interactively with the drag
  -- |      and moves in synchrony with the touch; dragging upwards cancels the
  -- |      dismissal.
  keyboardDismissMode :: String,
  
  -- | Determines when the keyboard should stay visible after a tap.
  -- | - 'never' (the default), tapping outside of the focused text input when the keyboard is up dismisses the keyboard. When this happens, children won't receive the tap.
  -- | - 'always', the keyboard will not dismiss automatically, and the scroll view will not catch taps, but children of the scroll view can catch taps.
  -- | - 'handled', the keyboard will not dismiss automatically when the tap was handled by a children, (or captured by an ancestor).
  -- | - false, deprecated, use 'never' instead
  -- | - true, deprecated, use 'always' instead
  keyboardShouldPersistTaps :: String,
  
  -- | The maximum allowed zoom scale. The default value is 1.0.
  maximumZoomScale :: Number,
  
  -- | The minimum allowed zoom scale. The default value is 1.0.
  minimumZoomScale :: Number,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | Enables nested scrolling for Android API level 21+. Nested scrolling is supported by default on iOS.
  nestedScrollEnabled :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | (visibleRows, changedRows) => void
  -- | Called when the set of visible rows changes.  `visibleRows` maps
  -- | { sectionID: { rowID: true }} for all the visible rows, and
  -- | `changedRows` maps { sectionID: { rowID: true | false }} for the rows
  -- | that have changed their visibility, with true indicating visible, and
  -- | false indicating the view has moved out of view.
  onChangeVisibleRows :: (EffectFn2 (Array (Object Foreign)) (Array (Object Foreign)) Unit),
  
  -- | Called when scrollable content view of the ScrollView changes.
  -- | Handler function is passed the content width and content height as parameters: (contentWidth, contentHeight)
  -- | It's implemented using onLayout handler attached to the content container which this ScrollView renders.
  onContentSizeChange :: (EffectFn2 Number Number Unit),
  
  -- | Called when all rows have been rendered and the list has been scrolled
  -- | to within onEndReachedThreshold of the bottom.  The native scroll
  -- | event is provided.
  onEndReached :: (Effect Unit),
  
  -- | Threshold in pixels for onEndReached.
  onEndReachedThreshold :: Number,
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Fires when scroll view has begun moving
  onMomentumScrollBegin :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Fires when scroll view has finished moving
  onMomentumScrollEnd :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Fires at most once per frame during scrolling.
  -- | The frequency of the events can be contolled using the scrollEventThrottle prop.
  onScroll :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Called when a scrolling animation ends.
  onScrollAnimationEnd :: (Effect Unit),
  
  -- | Fires if a user initiates a scroll gesture.
  onScrollBeginDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Fires when a user has finished scrolling.
  onScrollEndDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Used to override default value of overScroll mode.
  -- |    Possible values:
  -- |      - 'auto' - Default value, allow a user to over-scroll this view only if the content is large enough to meaningfully scroll.
  -- |      - 'always' - Always allow a user to over-scroll this view.
  -- |      - 'never' - Never allow a user to over-scroll this view.
  overScrollMode :: String,
  
  -- | Number of rows to render per event loop.
  pageSize :: Number,
  
  -- | When true the scroll view stops on multiples of the scroll view's size
  -- | when scrolling. This can be used for horizontal pagination. The default
  -- | value is false.
  pagingEnabled :: Boolean,
  
  -- | When true, ScrollView allows use of pinch gestures to zoom in and out.
  -- | The default value is true.
  pinchGestureEnabled :: Boolean,
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | A RefreshControl component, used to provide pull-to-refresh
  -- | functionality for the ScrollView.
  refreshControl :: JSX,
  
  -- | A performance optimization for improving scroll perf of
  -- | large lists, used in conjunction with overflow: 'hidden' on the row
  -- | containers.  Use at your own risk.
  removeClippedSubviews :: Boolean,
  
  -- | () => renderable
  -- | The header and footer are always rendered (if these props are provided)
  -- | on every render pass.  If they are expensive to re-render, wrap them
  -- | in StaticContainer or other mechanism as appropriate.  Footer is always
  -- | at the bottom of the list, and header at the top, on every render pass.
  renderFooter :: (Effect JSX),
  
  -- | () => renderable
  -- | The header and footer are always rendered (if these props are provided)
  -- | on every render pass.  If they are expensive to re-render, wrap them
  -- | in StaticContainer or other mechanism as appropriate.  Footer is always
  -- | at the bottom of the list, and header at the top, on every render pass.
  renderHeader :: (Effect JSX),
  
  -- | A function that returns the scrollable component in which the list rows are rendered.
  -- | Defaults to returning a ScrollView with the given props.
  renderScrollComponent :: (EffectFn1 (Record ScrollViewProps) JSX),
  
  -- | (sectionData, sectionID) => renderable
  -- | If provided, a sticky header is rendered for this section.  The sticky
  -- | behavior means that it will scroll with the content at the top of the
  -- | section until it reaches the top of the screen, at which point it will
  -- | stick to the top until it is pushed off the screen by the next section
  -- | header.
  renderSectionHeader :: (EffectFn2 Foreign String JSX),
  
  -- | (sectionID, rowID, adjacentRowHighlighted) => renderable
  -- | If provided, a renderable component to be rendered as the separator below each row
  -- | but not the last row if there is a section header below.
  -- | Take a sectionID and rowID of the row above and whether its adjacent row is highlighted.
  renderSeparator :: (EffectFn3 String String Boolean JSX),
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | When false, the content does not scroll. The default value is true
  scrollEnabled :: Boolean,
  
  -- | This controls how often the scroll event will be fired while scrolling (in events per seconds).
  -- | A higher number yields better accuracy for code that is tracking the scroll position,
  -- | but can lead to scroll performance problems due to the volume of information being send over the bridge.
  -- | The default value is zero, which means the scroll event will be sent only once each time the view is scrolled.
  scrollEventThrottle :: Number,
  
  -- | The amount by which the scroll view indicators are inset from the edges of the scroll view.
  -- | This should normally be set to the same value as the contentInset.
  -- | Defaults to {0, 0, 0, 0}.
  scrollIndicatorInsets :: Insets,
  
  -- | Tag used to log scroll performance on this scroll view. Will force
  -- | momentum events to be turned on (see sendMomentumEvents). This doesn't do
  -- | anything out of the box and you need to implement a custom native
  -- | FpsListener for it to be useful.
  -- | @platform android
  scrollPerfTag :: String,
  
  -- | How early to start rendering rows before they come on screen, in
  -- | pixels.
  scrollRenderAheadDistance :: Number,
  
  -- | When true the scroll view scrolls to top when the status bar is tapped.
  -- | The default value is true.
  scrollsToTop :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | When true, shows a horizontal scroll indicator.
  showsHorizontalScrollIndicator :: Boolean,
  
  -- | When true, shows a vertical scroll indicator.
  showsVerticalScrollIndicator :: Boolean,
  
  -- | When `snapToInterval` is set, `snapToAlignment` will define the relationship of the the snapping to the scroll view.
  -- |       - `start` (the default) will align the snap at the left (horizontal) or top (vertical)
  -- |       - `center` will align the snap in the center
  -- |       - `end` will align the snap at the right (horizontal) or bottom (vertical)
  snapToAlignment :: String,
  
  -- | Use in conjuction with `snapToOffsets`. By default, the end of the list counts as a snap
  -- | offset. Set `snapToEnd` to false to disable this behavior and allow the list to scroll freely
  -- | between its end and the last `snapToOffsets` offset. The default value is true.
  snapToEnd :: Boolean,
  
  -- | When set, causes the scroll view to stop at multiples of the value of `snapToInterval`.
  -- | This can be used for paginating through children that have lengths smaller than the scroll view.
  -- | Used in combination with `snapToAlignment` and `decelerationRate="fast"`. Overrides less
  -- | configurable `pagingEnabled` prop.
  snapToInterval :: Number,
  
  -- | When set, causes the scroll view to stop at the defined offsets. This can be used for
  -- | paginating through variously sized children that have lengths smaller than the scroll view.
  -- | Typically used in combination with `decelerationRate="fast"`. Overrides less configurable
  -- | `pagingEnabled` and `snapToInterval` props.
  snapToOffsets :: (Array Number),
  
  -- | Use in conjuction with `snapToOffsets`. By default, the beginning of the list counts as a
  -- | snap offset. Set `snapToStart` to false to disable this behavior and allow the list to scroll
  -- | freely between its start and the first `snapToOffsets` offset. The default value is true.
  snapToStart :: Boolean,
  
  -- | An array of child indices determining which children get docked to the
  -- | top of the screen when scrolling. For example, passing
  -- | `stickyHeaderIndices={[0]}` will cause the first child to be fixed to the
  -- | top of the scroll view. This property is not supported in conjunction
  -- | with `horizontal={true}`.
  -- | @platform ios
  stickyHeaderIndices :: (Array Number),
  
  -- | Makes the sections headers sticky. The sticky behavior means that it will scroll with the
  -- | content at the top of the section until it reaches the top of the screen, at which point it
  -- | will stick to the top until it is pushed off the screen by the next section header. This
  -- | property is not supported in conjunction with `horizontal={true}`. Only enabled by default
  -- | on iOS because of typical platform standards.
  stickySectionHeadersEnabled :: Boolean,
  
  -- | Style
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | The current scale of the scroll view content. The default value is 1.0.
  zoomScale :: Number,
  key :: String,
  children :: Array JSX
  )


-- | @see https://facebook.github.io/react-native/docs/listview.html#props
type ListViewProps_required   optional = 
  ( 
  -- | An instance of [ListView.DataSource](docs/listviewdatasource.html) to use
  dataSource :: ListViewDataSource,
  
  -- | (rowData, sectionID, rowID) => renderable
  -- | Takes a data entry from the data source and its ids and should return
  -- | a renderable component to be rendered as the row.  By default the data
  -- | is exactly what was put into the data source, but it's also possible to
  -- | provide custom extractors.
  renderRow :: (EffectFn4 Foreign String String Boolean JSX)
  | optional
  )


listView
  :: forall attrs attrs_  
  . Union attrs attrs_ (ListViewProps_optional  )
  => Record ((ListViewProps_required  ) attrs)
  -> JSX
listView props = unsafeCreateNativeElement "ListView" props


type MaskedViewIOSProps_optional  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
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


newtype NativeTouchEvent = NativeTouchEvent {
    
  -- | Array of all touch events that have changed since the last event
  changedTouches :: (Array NativeTouchEvent)
  , 
  -- | The ID of the touch
  identifier :: String
  , 
  -- | The X position of the touch, relative to the element
  locationX :: Number
  , 
  -- | The Y position of the touch, relative to the element
  locationY :: Number
  , 
  -- | The X position of the touch, relative to the screen
  pageX :: Number
  , 
  -- | The Y position of the touch, relative to the screen
  pageY :: Number
  , 
  -- | The node id of the element receiving the touch event
  target :: String
  , 
  -- | A time identifier for the touch, useful for velocity calculation
  timestamp :: Number
  , 
  -- | Array of all current touches on the screen
  touches :: (Array NativeTouchEvent)
}


type NavState  = {
    canGoBack  :: (Undefinable  Boolean)
  , canGoForward  :: (Undefinable  Boolean)
  , loading  :: (Undefinable  Boolean)
  , title  :: (Undefinable  String)
  , url  :: (Undefinable  String)
}


type NavigatorIOSProps_optional  = 
  ( 
  -- | The default background color of the navigation bar.
  barTintColor :: String,
  
  -- | Boolean value that indicates whether the interactive pop gesture is
  -- | enabled. This is useful for enabling/disabling the back swipe navigation
  -- | gesture.
  -- | If this prop is not provided, the default behavior is for the back swipe
  -- | gesture to be enabled when the navigation bar is shown and disabled when
  -- | the navigation bar is hidden. Once you've provided the
  -- | `interactivePopGestureEnabled` prop, you can never restore the default
  -- | behavior.
  interactivePopGestureEnabled :: Boolean,
  
  -- | The default wrapper style for components in the navigator.
  -- | A common use case is to set the backgroundColor for every page
  itemWrapperStyle :: CSS,
  
  -- | A Boolean value that indicates whether the navigation bar is hidden
  navigationBarHidden :: Boolean,
  
  -- | A Boolean value that indicates whether to hide the 1px hairline shadow
  shadowHidden :: Boolean,
  
  -- | NOT IN THE DOC BUT IN THE EXAMPLES
  style :: CSS,
  
  -- | The color used for buttons in the navigation bar
  tintColor :: String,
  
  -- | The text color of the navigation bar title
  titleTextColor :: String,
  
  -- | A Boolean value that indicates whether the navigation bar is translucent
  translucent :: Boolean,
  key :: String,
  children :: Array JSX
  )

type NavigatorIOSProps_required   optional = 
  ( 
  -- | NavigatorIOS uses "route" objects to identify child views, their props, and navigation bar configuration.
  -- | "push" and all the other navigation operations expect routes to be like this
  initialRoute :: Route
  | optional
  )


navigatorIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (NavigatorIOSProps_optional  )
  => Record ((NavigatorIOSProps_required  ) attrs)
  -> JSX
navigatorIOS props = unsafeCreateNativeElement "NavigatorIOS" props



-- | @see PickerIOS.ios.js
type PickerIOSItemProps  = 
  ( label :: String,
  value :: String,
  key :: String,
  children :: Array JSX
  )


pickerIOSItem
  :: forall attrs attrs_  
  . Union attrs attrs_ (PickerIOSItemProps  )
  => Record attrs
  -> JSX
pickerIOSItem props = unsafeCreateNativeElement "PickerIOSItem" props
 

pickerIOSItem_ :: Array JSX -> JSX
pickerIOSItem_ children = pickerIOSItem { children }



-- | @see https://facebook.github.io/react-native/docs/pickerios.html
-- | @see PickerIOS.ios.js
type PickerIOSProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  itemStyle :: CSS,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  onValueChange :: (EffectFn1 String Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  selectedValue :: String,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
  )


pickerIOS
  :: forall attrs attrs_  
  . Union attrs attrs_ (PickerIOSProps  )
  => Record attrs
  -> JSX
pickerIOS props = unsafeCreateNativeElement "PickerIOS" props
 

pickerIOS_ :: Array JSX -> JSX
pickerIOS_ children = pickerIOS { children }



-- | @see Picker.js
type PickerItemProps_optional  = 
  ( color :: String,
  testID :: String,
  value :: Foreign,
  key :: String,
  children :: Array JSX
  )


-- | @see Picker.js
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



-- | @see https://facebook.github.io/react-native/docs/picker.html
-- | @see Picker.js
type PickerProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | If set to false, the picker will be disabled, i.e. the user will not be able to make a
  -- | selection.
  -- | @platform android
  enabled :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Style to apply to each of the item labels.
  -- | @platform ios
  itemStyle :: CSS,
  
  -- | On Android, specifies how to display the selection items when the user taps on the picker:
  -- |    - 'dialog': Show a modal dialog. This is the default.
  -- |    - 'dropdown': Shows a dropdown anchored to the picker view
  -- | @platform android
  mode :: String,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Callback for when an item is selected. This is called with the
  -- | following parameters:
  -- | - itemValue: the value prop of the item that was selected
  -- | - itemPosition: the index of the selected item in this picker
  onValueChange :: (EffectFn2 Foreign Number Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | Prompt string for this picker, used on Android in dialog mode as the title of the dialog.
  -- | @platform android
  prompt :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Value matching value of one of the items.
  -- | Can be a string or an integer.
  selectedValue :: Foreign,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | Used to locate this view in end-to-end tests.
  testId :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
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



-- | @see https://facebook.github.io/react-native/docs/progressbarandroid.html
-- | @see ProgressBarAndroid.android.js
type ProgressBarAndroidProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | Color of the progress bar.
  color :: String,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | If the progress bar will show indeterminate progress.
  -- | Note that this can only be false if styleAttr is Horizontal.
  indeterminate :: Boolean,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | The progress value (between 0 and 1).
  progress :: Number,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Style of the ProgressBar. One of:
  -- |    Horizontal
  -- |    Normal (default)
  -- |    Small
  -- |    Large
  -- |    Inverse
  -- |    SmallInverse
  -- |    LargeInverse
  styleAttr :: String,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
  )


progressBarAndroid
  :: forall attrs attrs_  
  . Union attrs attrs_ (ProgressBarAndroidProps  )
  => Record attrs
  -> JSX
progressBarAndroid props = unsafeCreateNativeElement "ProgressBarAndroid" props
 

progressBarAndroid_ :: Array JSX -> JSX
progressBarAndroid_ children = progressBarAndroid { children }



-- | @see https://facebook.github.io/react-native/docs/progressviewios.html
-- | @see ProgressViewIOS.ios.js
type ProgressViewIOSProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | The progress value (between 0 and 1).
  progress :: Number,
  
  -- | A stretchable image to display as the progress bar.
  progressImage :: (Array ImageURISource),
  
  -- | The tint color of the progress bar itself.
  progressTintColor :: String,
  
  -- | The progress bar style.
  progressViewStyle :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | A stretchable image to display behind the progress bar.
  trackImage :: (Array ImageURISource),
  
  -- | The tint color of the progress bar track.
  trackTintColor :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | When true the scroll view bounces horizontally when it reaches the end
  -- | even if the content is smaller than the scroll view itself. The default
  -- | value is true when `horizontal={true}` and false otherwise.
  alwaysBounceHorizontal :: Boolean,
  
  -- | When true the scroll view bounces vertically when it reaches the end
  -- | even if the content is smaller than the scroll view itself. The default
  -- | value is false when `horizontal={true}` and true otherwise.
  alwaysBounceVertical :: Boolean,
  
  -- | Controls whether iOS should automatically adjust the content inset for scroll views that are placed behind a navigation bar or tab bar/ toolbar.
  -- | The default value is true.
  automaticallyAdjustContentInsets :: Boolean,
  
  -- | When true the scroll view bounces when it reaches the end of the
  -- | content if the content is larger then the scroll view along the axis of
  -- | the scroll direction. When false it disables all bouncing even if
  -- | the `alwaysBounce*` props are true. The default value is true.
  bounces :: Boolean,
  
  -- | When true gestures can drive zoom past min/max and the zoom will animate
  -- | to the min/max value at gesture end otherwise the zoom will not exceed
  -- | the limits.
  bouncesZoom :: Boolean,
  
  -- | When false once tracking starts won't try to drag if the touch moves.
  -- | The default value is true.
  canCancelContentTouches :: Boolean,
  
  -- | When true the scroll view automatically centers the content when the
  -- | content is smaller than the scroll view bounds; when the content is
  -- | larger than the scroll view this property has no effect. The default
  -- | value is false.
  centerContent :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | These styles will be applied to the scroll view content container which
  -- | wraps all of the child views. Example:
  -- |    return (
  -- |      <ScrollView contentContainerStyle={styles.contentContainer}>
  -- |      </ScrollView>
  -- |    );
  -- |    ...
  -- |    const styles = StyleSheet.create({
  -- |      contentContainer: {
  -- |        paddingVertical: 20
  -- |      }
  -- |    });
  contentContainerStyle :: CSS,
  
  -- | The amount by which the scroll view content is inset from the edges of the scroll view.
  -- | Defaults to {0, 0, 0, 0}.
  contentInset :: Insets,
  
  -- | This property specifies how the safe area insets are used to modify the content area of the scroll view.
  -- | The default value of this property must be 'automatic'. But the default value is 'never' until RN@0.51.
  contentInsetAdjustmentBehavior :: String,
  
  -- | Used to manually set the starting scroll offset.
  -- | The default value is {x: 0, y: 0}
  contentOffset :: PointPropType,
  
  -- | A floating-point number that determines how quickly the scroll view
  -- | decelerates after the user lifts their finger. Reasonable choices include
  -- |    - Normal: 0.998 (the default)
  -- |    - Fast: 0.9
  decelerationRate :: String,
  
  -- | When true the ScrollView will try to lock to only vertical or horizontal
  -- | scrolling while dragging.  The default value is false.
  directionalLockEnabled :: Boolean,
  
  -- | Sometimes a scrollview takes up more space than its content fills.
  -- | When this is the case, this prop will fill the rest of the
  -- | scrollview with a color to avoid setting a background and creating
  -- | unnecessary overdraw. This is an advanced optimization that is not
  -- | needed in the general case.
  endFillColor :: String,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | When true the scroll view's children are arranged horizontally in a row
  -- | instead of vertically in a column. The default value is false.
  horizontal :: Boolean,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | The style of the scroll indicators.
  -- | - default (the default), same as black.
  -- | - black, scroll indicator is black. This style is good against
  -- |    a white content background.
  -- | - white, scroll indicator is white. This style is good against
  -- |    a black content background.
  indicatorStyle :: String,
  
  -- | If sticky headers should stick at the bottom instead of the top of the
  -- | ScrollView. This is usually used with inverted ScrollViews.
  invertStickyHeaders :: Boolean,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Determines whether the keyboard gets dismissed in response to a drag.
  -- |    - 'none' (the default) drags do not dismiss the keyboard.
  -- |    - 'onDrag' the keyboard is dismissed when a drag begins.
  -- |    - 'interactive' the keyboard is dismissed interactively with the drag
  -- |      and moves in synchrony with the touch; dragging upwards cancels the
  -- |      dismissal.
  keyboardDismissMode :: String,
  
  -- | Determines when the keyboard should stay visible after a tap.
  -- | - 'never' (the default), tapping outside of the focused text input when the keyboard is up dismisses the keyboard. When this happens, children won't receive the tap.
  -- | - 'always', the keyboard will not dismiss automatically, and the scroll view will not catch taps, but children of the scroll view can catch taps.
  -- | - 'handled', the keyboard will not dismiss automatically when the tap was handled by a children, (or captured by an ancestor).
  -- | - false, deprecated, use 'never' instead
  -- | - true, deprecated, use 'always' instead
  keyboardShouldPersistTaps :: String,
  
  -- | The maximum allowed zoom scale. The default value is 1.0.
  maximumZoomScale :: Number,
  
  -- | The minimum allowed zoom scale. The default value is 1.0.
  minimumZoomScale :: Number,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | Enables nested scrolling for Android API level 21+. Nested scrolling is supported by default on iOS.
  nestedScrollEnabled :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Called when scrollable content view of the ScrollView changes.
  -- | Handler function is passed the content width and content height as parameters: (contentWidth, contentHeight)
  -- | It's implemented using onLayout handler attached to the content container which this ScrollView renders.
  onContentSizeChange :: (EffectFn2 Number Number Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Fires when scroll view has begun moving
  onMomentumScrollBegin :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Fires when scroll view has finished moving
  onMomentumScrollEnd :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Fires at most once per frame during scrolling.
  -- | The frequency of the events can be contolled using the scrollEventThrottle prop.
  onScroll :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Called when a scrolling animation ends.
  onScrollAnimationEnd :: (Effect Unit),
  
  -- | Fires if a user initiates a scroll gesture.
  onScrollBeginDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Fires when a user has finished scrolling.
  onScrollEndDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Used to override default value of overScroll mode.
  -- |    Possible values:
  -- |      - 'auto' - Default value, allow a user to over-scroll this view only if the content is large enough to meaningfully scroll.
  -- |      - 'always' - Always allow a user to over-scroll this view.
  -- |      - 'never' - Never allow a user to over-scroll this view.
  overScrollMode :: String,
  
  -- | When true the scroll view stops on multiples of the scroll view's size
  -- | when scrolling. This can be used for horizontal pagination. The default
  -- | value is false.
  pagingEnabled :: Boolean,
  
  -- | When true, ScrollView allows use of pinch gestures to zoom in and out.
  -- | The default value is true.
  pinchGestureEnabled :: Boolean,
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | A RefreshControl component, used to provide pull-to-refresh
  -- | functionality for the ScrollView.
  refreshControl :: JSX,
  
  -- | Experimental: When true offscreen child views (whose `overflow` value is
  -- | `hidden`) are removed from their native backing superview when offscreen.
  -- | This canimprove scrolling performance on long lists. The default value is
  -- | false.
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | When false, the content does not scroll. The default value is true
  scrollEnabled :: Boolean,
  
  -- | This controls how often the scroll event will be fired while scrolling (in events per seconds).
  -- | A higher number yields better accuracy for code that is tracking the scroll position,
  -- | but can lead to scroll performance problems due to the volume of information being send over the bridge.
  -- | The default value is zero, which means the scroll event will be sent only once each time the view is scrolled.
  scrollEventThrottle :: Number,
  
  -- | The amount by which the scroll view indicators are inset from the edges of the scroll view.
  -- | This should normally be set to the same value as the contentInset.
  -- | Defaults to {0, 0, 0, 0}.
  scrollIndicatorInsets :: Insets,
  
  -- | Tag used to log scroll performance on this scroll view. Will force
  -- | momentum events to be turned on (see sendMomentumEvents). This doesn't do
  -- | anything out of the box and you need to implement a custom native
  -- | FpsListener for it to be useful.
  -- | @platform android
  scrollPerfTag :: String,
  
  -- | When true the scroll view scrolls to top when the status bar is tapped.
  -- | The default value is true.
  scrollsToTop :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | When true, shows a horizontal scroll indicator.
  showsHorizontalScrollIndicator :: Boolean,
  
  -- | When true, shows a vertical scroll indicator.
  showsVerticalScrollIndicator :: Boolean,
  
  -- | When `snapToInterval` is set, `snapToAlignment` will define the relationship of the the snapping to the scroll view.
  -- |       - `start` (the default) will align the snap at the left (horizontal) or top (vertical)
  -- |       - `center` will align the snap in the center
  -- |       - `end` will align the snap at the right (horizontal) or bottom (vertical)
  snapToAlignment :: String,
  
  -- | Use in conjuction with `snapToOffsets`. By default, the end of the list counts as a snap
  -- | offset. Set `snapToEnd` to false to disable this behavior and allow the list to scroll freely
  -- | between its end and the last `snapToOffsets` offset. The default value is true.
  snapToEnd :: Boolean,
  
  -- | When set, causes the scroll view to stop at multiples of the value of `snapToInterval`.
  -- | This can be used for paginating through children that have lengths smaller than the scroll view.
  -- | Used in combination with `snapToAlignment` and `decelerationRate="fast"`. Overrides less
  -- | configurable `pagingEnabled` prop.
  snapToInterval :: Number,
  
  -- | When set, causes the scroll view to stop at the defined offsets. This can be used for
  -- | paginating through variously sized children that have lengths smaller than the scroll view.
  -- | Typically used in combination with `decelerationRate="fast"`. Overrides less configurable
  -- | `pagingEnabled` and `snapToInterval` props.
  snapToOffsets :: (Array Number),
  
  -- | Use in conjuction with `snapToOffsets`. By default, the beginning of the list counts as a
  -- | snap offset. Set `snapToStart` to false to disable this behavior and allow the list to scroll
  -- | freely between its start and the first `snapToOffsets` offset. The default value is true.
  snapToStart :: Boolean,
  
  -- | An array of child indices determining which children get docked to the
  -- | top of the screen when scrolling. For example passing
  -- | `stickyHeaderIndices={[0]}` will cause the first child to be fixed to the
  -- | top of the scroll view. This property is not supported in conjunction
  -- | with `horizontal={true}`.
  stickyHeaderIndices :: (Array Number),
  
  -- | Style
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | The current scale of the scroll view content. The default value is 1.0.
  zoomScale :: Number,
  key :: String,
  children :: Array JSX
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | The colors (at least one) that will be used to draw the refresh indicator.
  colors :: (Array String),
  
  -- | Whether the pull to refresh functionality is enabled.
  enabled :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Called when the view starts refreshing.
  onRefresh :: (Effect Unit),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | The background color of the refresh indicator.
  progressBackgroundColor :: String,
  
  -- | Progress view top offset
  -- | @platform android
  progressViewOffset :: Number,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | Size of the refresh indicator, see RefreshControl.SIZE.
  size :: Number,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | The color of the refresh indicator.
  tintColor :: String,
  
  -- | The title displayed under the refresh indicator.
  title :: String,
  
  -- | Title color.
  titleColor :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
  )

type RefreshControlProps_required   optional = 
  ( 
  -- | Whether the view should be indicating an active refresh.
  refreshing :: Boolean
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | When true the scroll view bounces horizontally when it reaches the end
  -- | even if the content is smaller than the scroll view itself. The default
  -- | value is true when `horizontal={true}` and false otherwise.
  alwaysBounceHorizontal :: Boolean,
  
  -- | When true the scroll view bounces vertically when it reaches the end
  -- | even if the content is smaller than the scroll view itself. The default
  -- | value is false when `horizontal={true}` and true otherwise.
  alwaysBounceVertical :: Boolean,
  
  -- | Controls whether iOS should automatically adjust the content inset for scroll views that are placed behind a navigation bar or tab bar/ toolbar.
  -- | The default value is true.
  automaticallyAdjustContentInsets :: Boolean,
  
  -- | When true the scroll view bounces when it reaches the end of the
  -- | content if the content is larger then the scroll view along the axis of
  -- | the scroll direction. When false it disables all bouncing even if
  -- | the `alwaysBounce*` props are true. The default value is true.
  bounces :: Boolean,
  
  -- | When true gestures can drive zoom past min/max and the zoom will animate
  -- | to the min/max value at gesture end otherwise the zoom will not exceed
  -- | the limits.
  bouncesZoom :: Boolean,
  
  -- | When false once tracking starts won't try to drag if the touch moves.
  -- | The default value is true.
  canCancelContentTouches :: Boolean,
  
  -- | When true the scroll view automatically centers the content when the
  -- | content is smaller than the scroll view bounds; when the content is
  -- | larger than the scroll view this property has no effect. The default
  -- | value is false.
  centerContent :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | These styles will be applied to the scroll view content container which
  -- | wraps all of the child views. Example:
  -- |    return (
  -- |      <ScrollView contentContainerStyle={styles.contentContainer}>
  -- |      </ScrollView>
  -- |    );
  -- |    ...
  -- |    const styles = StyleSheet.create({
  -- |      contentContainer: {
  -- |        paddingVertical: 20
  -- |      }
  -- |    });
  contentContainerStyle :: CSS,
  
  -- | The amount by which the scroll view content is inset from the edges of the scroll view.
  -- | Defaults to {0, 0, 0, 0}.
  contentInset :: Insets,
  
  -- | This property specifies how the safe area insets are used to modify the content area of the scroll view.
  -- | The default value of this property must be 'automatic'. But the default value is 'never' until RN@0.51.
  contentInsetAdjustmentBehavior :: String,
  
  -- | Used to manually set the starting scroll offset.
  -- | The default value is {x: 0, y: 0}
  contentOffset :: PointPropType,
  
  -- | A floating-point number that determines how quickly the scroll view
  -- | decelerates after the user lifts their finger. Reasonable choices include
  -- |    - Normal: 0.998 (the default)
  -- |    - Fast: 0.9
  decelerationRate :: String,
  
  -- | When true the ScrollView will try to lock to only vertical or horizontal
  -- | scrolling while dragging.  The default value is false.
  directionalLockEnabled :: Boolean,
  
  -- | Sometimes a scrollview takes up more space than its content fills.
  -- | When this is the case, this prop will fill the rest of the
  -- | scrollview with a color to avoid setting a background and creating
  -- | unnecessary overdraw. This is an advanced optimization that is not
  -- | needed in the general case.
  endFillColor :: String,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | When true the scroll view's children are arranged horizontally in a row
  -- | instead of vertically in a column. The default value is false.
  horizontal :: Boolean,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | The style of the scroll indicators.
  -- | - default (the default), same as black.
  -- | - black, scroll indicator is black. This style is good against
  -- |    a white content background.
  -- | - white, scroll indicator is white. This style is good against
  -- |    a black content background.
  indicatorStyle :: String,
  
  -- | If sticky headers should stick at the bottom instead of the top of the
  -- | ScrollView. This is usually used with inverted ScrollViews.
  invertStickyHeaders :: Boolean,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Determines whether the keyboard gets dismissed in response to a drag.
  -- |    - 'none' (the default) drags do not dismiss the keyboard.
  -- |    - 'onDrag' the keyboard is dismissed when a drag begins.
  -- |    - 'interactive' the keyboard is dismissed interactively with the drag
  -- |      and moves in synchrony with the touch; dragging upwards cancels the
  -- |      dismissal.
  keyboardDismissMode :: String,
  
  -- | Determines when the keyboard should stay visible after a tap.
  -- | - 'never' (the default), tapping outside of the focused text input when the keyboard is up dismisses the keyboard. When this happens, children won't receive the tap.
  -- | - 'always', the keyboard will not dismiss automatically, and the scroll view will not catch taps, but children of the scroll view can catch taps.
  -- | - 'handled', the keyboard will not dismiss automatically when the tap was handled by a children, (or captured by an ancestor).
  -- | - false, deprecated, use 'never' instead
  -- | - true, deprecated, use 'always' instead
  keyboardShouldPersistTaps :: String,
  
  -- | The maximum allowed zoom scale. The default value is 1.0.
  maximumZoomScale :: Number,
  
  -- | The minimum allowed zoom scale. The default value is 1.0.
  minimumZoomScale :: Number,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | Enables nested scrolling for Android API level 21+. Nested scrolling is supported by default on iOS.
  nestedScrollEnabled :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Called when scrollable content view of the ScrollView changes.
  -- | Handler function is passed the content width and content height as parameters: (contentWidth, contentHeight)
  -- | It's implemented using onLayout handler attached to the content container which this ScrollView renders.
  onContentSizeChange :: (EffectFn2 Number Number Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Fires when scroll view has begun moving
  onMomentumScrollBegin :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Fires when scroll view has finished moving
  onMomentumScrollEnd :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Fires at most once per frame during scrolling.
  -- | The frequency of the events can be contolled using the scrollEventThrottle prop.
  onScroll :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Called when a scrolling animation ends.
  onScrollAnimationEnd :: (Effect Unit),
  
  -- | Fires if a user initiates a scroll gesture.
  onScrollBeginDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | Fires when a user has finished scrolling.
  onScrollEndDrag :: (EffectFn1 (NativeSyntheticEvent NativeScrollEvent) Unit),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Used to override default value of overScroll mode.
  -- |    Possible values:
  -- |      - 'auto' - Default value, allow a user to over-scroll this view only if the content is large enough to meaningfully scroll.
  -- |      - 'always' - Always allow a user to over-scroll this view.
  -- |      - 'never' - Never allow a user to over-scroll this view.
  overScrollMode :: String,
  
  -- | When true the scroll view stops on multiples of the scroll view's size
  -- | when scrolling. This can be used for horizontal pagination. The default
  -- | value is false.
  pagingEnabled :: Boolean,
  
  -- | When true, ScrollView allows use of pinch gestures to zoom in and out.
  -- | The default value is true.
  pinchGestureEnabled :: Boolean,
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | A RefreshControl component, used to provide pull-to-refresh
  -- | functionality for the ScrollView.
  refreshControl :: JSX,
  
  -- | Experimental: When true offscreen child views (whose `overflow` value is
  -- | `hidden`) are removed from their native backing superview when offscreen.
  -- | This canimprove scrolling performance on long lists. The default value is
  -- | false.
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | When false, the content does not scroll. The default value is true
  scrollEnabled :: Boolean,
  
  -- | This controls how often the scroll event will be fired while scrolling (in events per seconds).
  -- | A higher number yields better accuracy for code that is tracking the scroll position,
  -- | but can lead to scroll performance problems due to the volume of information being send over the bridge.
  -- | The default value is zero, which means the scroll event will be sent only once each time the view is scrolled.
  scrollEventThrottle :: Number,
  
  -- | The amount by which the scroll view indicators are inset from the edges of the scroll view.
  -- | This should normally be set to the same value as the contentInset.
  -- | Defaults to {0, 0, 0, 0}.
  scrollIndicatorInsets :: Insets,
  
  -- | Tag used to log scroll performance on this scroll view. Will force
  -- | momentum events to be turned on (see sendMomentumEvents). This doesn't do
  -- | anything out of the box and you need to implement a custom native
  -- | FpsListener for it to be useful.
  -- | @platform android
  scrollPerfTag :: String,
  
  -- | When true the scroll view scrolls to top when the status bar is tapped.
  -- | The default value is true.
  scrollsToTop :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | When true, shows a horizontal scroll indicator.
  showsHorizontalScrollIndicator :: Boolean,
  
  -- | When true, shows a vertical scroll indicator.
  showsVerticalScrollIndicator :: Boolean,
  
  -- | When `snapToInterval` is set, `snapToAlignment` will define the relationship of the the snapping to the scroll view.
  -- |       - `start` (the default) will align the snap at the left (horizontal) or top (vertical)
  -- |       - `center` will align the snap in the center
  -- |       - `end` will align the snap at the right (horizontal) or bottom (vertical)
  snapToAlignment :: String,
  
  -- | Use in conjuction with `snapToOffsets`. By default, the end of the list counts as a snap
  -- | offset. Set `snapToEnd` to false to disable this behavior and allow the list to scroll freely
  -- | between its end and the last `snapToOffsets` offset. The default value is true.
  snapToEnd :: Boolean,
  
  -- | When set, causes the scroll view to stop at multiples of the value of `snapToInterval`.
  -- | This can be used for paginating through children that have lengths smaller than the scroll view.
  -- | Used in combination with `snapToAlignment` and `decelerationRate="fast"`. Overrides less
  -- | configurable `pagingEnabled` prop.
  snapToInterval :: Number,
  
  -- | When set, causes the scroll view to stop at the defined offsets. This can be used for
  -- | paginating through variously sized children that have lengths smaller than the scroll view.
  -- | Typically used in combination with `decelerationRate="fast"`. Overrides less configurable
  -- | `pagingEnabled` and `snapToInterval` props.
  snapToOffsets :: (Array Number),
  
  -- | Use in conjuction with `snapToOffsets`. By default, the beginning of the list counts as a
  -- | snap offset. Set `snapToStart` to false to disable this behavior and allow the list to scroll
  -- | freely between its start and the first `snapToOffsets` offset. The default value is true.
  snapToStart :: Boolean,
  
  -- | An array of child indices determining which children get docked to the
  -- | top of the screen when scrolling. For example passing
  -- | `stickyHeaderIndices={[0]}` will cause the first child to be fixed to the
  -- | top of the scroll view. This property is not supported in conjunction
  -- | with `horizontal={true}`.
  stickyHeaderIndices :: (Array Number),
  
  -- | Style
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | The current scale of the scroll view content. The default value is 1.0.
  zoomScale :: Number,
  key :: String,
  children :: Array JSX
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | If false the user won't be able to interact with the control. Default value is true.
  enabled :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | If true, then selecting a segment won't persist visually.
  -- | The onValueChange callback will still work as expected.
  momentary :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Callback that is called when the user taps a segment;
  -- | passes the event as an argument
  onChange :: (EffectFn1 (NativeSyntheticEvent NativeSegmentedControlIOSChangeEvent) Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Callback that is called when the user taps a segment; passes the segment's value as an argument
  onValueChange :: (EffectFn1 String Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | The index in props.values of the segment to be (pre)selected.
  selectedIndex :: Number,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | Accent color of the control.
  tintColor :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | The labels for the control's segment buttons, in order.
  values :: (Array String),
  key :: String,
  children :: Array JSX
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | If true the user won't be able to move the slider.
  -- | Default value is false.
  disabled :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Assigns a maximum track image. Only static images are supported.
  -- | The leftmost pixel of the image will be stretched to fill the track.
  maximumTrackImage :: ImageURISource,
  
  -- | The color used for the track to the right of the button.
  -- | Overrides the default blue gradient image.
  maximumTrackTintColor :: String,
  
  -- | Initial maximum value of the slider. Default value is 1.
  maximumValue :: Number,
  
  -- | Assigns a minimum track image. Only static images are supported.
  -- | The rightmost pixel of the image will be stretched to fill the track.
  minimumTrackImage :: ImageURISource,
  
  -- | The color used for the track to the left of the button.
  -- | Overrides the default blue gradient image.
  minimumTrackTintColor :: String,
  
  -- | Initial minimum value of the slider. Default value is 0.
  minimumValue :: Number,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Callback called when the user finishes changing the value (e.g. when the slider is released).
  onSlidingComplete :: (EffectFn1 Number Unit),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Callback continuously called while the user is dragging the slider.
  onValueChange :: (EffectFn1 Number Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | Step value of the slider. The value should be between 0 and (maximumValue - minimumValue). Default value is 0.
  step :: Number,
  
  -- | Used to style and layout the Slider. See StyleSheet.js and ViewStylePropTypes.js for more info.
  style :: CSS,
  
  -- | Used to locate this view in UI automation tests.
  testID :: String,
  
  -- | Sets an image for the thumb. Only static images are supported.
  thumbImage :: ImageURISource,
  
  -- | Color of the foreground switch grip.
  thumbTintColor :: String,
  
  -- | Assigns a single image for the track. Only static images
  -- | are supported. The center pixel of the image will be stretched
  -- | to fill the track.
  trackImage :: ImageURISource,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | Initial value of the slider. The value should be between minimumValue
  -- | and maximumValue, which default to 0 and 1 respectively.
  -- | Default value is 0.
  -- | This is not a controlled component, you don't need to update
  -- | the value during dragging.
  value :: Number,
  key :: String,
  children :: Array JSX
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
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
  ( 
  -- | If the transition between status bar property changes should be
  -- | animated. Supported for backgroundColor, barStyle and hidden.
  animated :: Boolean,
  
  -- | The background color of the status bar.
  backgroundColor :: String,
  
  -- | Sets the color of the status bar text.
  barStyle :: String,
  
  -- | If the status bar is hidden.
  hidden :: Boolean,
  
  -- | If the network activity indicator should be visible.
  networkActivityIndicatorVisible :: Boolean,
  
  -- | The transition effect when showing and hiding the status bar using
  -- | the hidden prop. Defaults to 'fade'.
  showHideTransition :: String,
  
  -- | If the status bar is translucent. When translucent is set to true,
  -- | the app will draw under the status bar. This is useful when using a
  -- | semi transparent status bar color.
  translucent :: Boolean,
  key :: String,
  children :: Array JSX
  )


statusBar
  :: forall attrs attrs_  
  . Union attrs attrs_ (StatusBarProps  )
  => Record attrs
  -> JSX
statusBar props = unsafeCreateNativeElement "StatusBar" props
 

statusBar_ :: Array JSX -> JSX
statusBar_ children = statusBar { children }


foreign import data SwipeableListViewDataSource :: Type


type SwipeableListViewProps_optional  = 
  ( key :: String,
  children :: Array JSX
  )

type SwipeableListViewProps_required   optional = 
  ( 
  -- | To alert the user that swiping is possible, the first row can bounce
  -- | on component mount.
  bounceFirstRowOnMount :: Boolean,
  
  -- | Use `SwipeableListView.getNewDataSource()` to get a data source to use,
  -- | then use it just like you would a normal ListView data source
  dataSource :: SwipeableListViewDataSource,
  maxSwipeDistance :: Number,
  renderRow :: (EffectFn4 Foreign String String Boolean JSX)
  | optional
  )


swipeableListView
  :: forall attrs attrs_  
  . Union attrs attrs_ (SwipeableListViewProps_optional  )
  => Record ((SwipeableListViewProps_required  ) attrs)
  -> JSX
swipeableListView props = unsafeCreateNativeElement "SwipeableListView" props



-- | https://facebook.github.io/react-native/docs/switchios.html#props
type SwitchIOSProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | If true the user won't be able to toggle the switch. Default value is false.
  disabled :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Background color when the switch is turned on.
  onTintColor :: String,
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Callback that is called when the user toggles the switch.
  onValueChange :: (EffectFn1 Boolean Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | Background color for the switch round button.
  thumbTintColor :: String,
  
  -- | Background color when the switch is turned off.
  tintColor :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | The value of the switch, if true the switch will be turned on. Default value is false.
  value :: Boolean,
  key :: String,
  children :: Array JSX
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | If true the user won't be able to toggle the switch.
  -- | Default value is false.
  disabled :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | On iOS, custom color for the background.
  -- | Can be seen when the switch value is false or when the switch is disabled.
  ios_backgroundColor :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Background color when the switch is turned on.
  onTintColor :: String,
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Invoked with the new value when the value changes.
  onValueChange :: (EffectFn1 Boolean Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | Color of the foreground switch grip.
  thumbColor :: String,
  
  -- | Color of the foreground switch grip.
  thumbTintColor :: String,
  
  -- | Background color when the switch is turned off.
  tintColor :: String,
  
  -- | Custom colors for the switch track
  -- | Color when false and color when true
  trackColor :: { false :: String, true :: String },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | The value of the switch. If true the switch will be turned on.
  -- | Default value is false.
  value :: Boolean,
  key :: String,
  children :: Array JSX
  )


switch
  :: forall attrs attrs_  
  . Union attrs attrs_ (SwitchProps  )
  => Record attrs
  -> JSX
switch props = unsafeCreateNativeElement "Switch" props
 

switch_ :: Array JSX -> JSX
switch_ children = switch { children }



-- | @see https://facebook.github.io/react-native/docs/tabbarios-item.html#props
type TabBarIOSItemProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Little red bubble that sits at the top right of the icon.
  badge :: String,
  
  -- | Background color for the badge. Available since iOS 10.
  badgeColor :: String,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | A custom icon for the tab. It is ignored when a system icon is defined.
  icon :: ImageURISource,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Callback when this tab is being selected,
  -- | you should change the state of your component to set selected={true}.
  onPress :: (Effect Unit),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | If set to true it renders the image as original,
  -- | it defaults to being displayed as a template
  renderAsOriginal :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | It specifies whether the children are visible or not. If you see a blank content, you probably forgot to add a selected one.
  selected :: Boolean,
  
  -- | A custom icon when the tab is selected.
  -- | It is ignored when a system icon is defined. If left empty, the icon will be tinted in blue.
  selectedIcon :: ImageURISource,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | React style object.
  style :: CSS,
  
  -- | Items comes with a few predefined system icons.
  -- | Note that if you are using them, the title and selectedIcon will be overriden with the system ones.
  -- |   enum('bookmarks', 'contacts', 'downloads', 'favorites', 'featured', 'history', 'more', 'most-recent', 'most-viewed', 'recents', 'search', 'top-rated')
  systemIcon :: String,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | Text that appears under the icon. It is ignored when a system icon is defined.
  title :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
  )


tabBarIOSItem
  :: forall attrs attrs_  
  . Union attrs attrs_ (TabBarIOSItemProps  )
  => Record attrs
  -> JSX
tabBarIOSItem props = unsafeCreateNativeElement "TabBarIOSItem" props
 

tabBarIOSItem_ :: Array JSX -> JSX
tabBarIOSItem_ children = tabBarIOSItem { children }



-- | @see https://facebook.github.io/react-native/docs/tabbarios.html#props
type TabBarIOSProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Background color of the tab bar
  barTintColor :: String,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Specifies tab bar item positioning. Available values are:
  -- | - fill - distributes items across the entire width of the tab bar
  -- | - center - centers item in the available tab bar space
  -- | - auto (default) - distributes items dynamically according to the
  -- | user interface idiom. In a horizontally compact environment (e.g. iPhone 5)
  -- | this value defaults to `fill`, in a horizontally regular one (e.g. iPad)
  -- | it defaults to center.
  itemPositioning :: String,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | Color of the currently selected tab icon
  tintColor :: String,
  
  -- | A Boolean value that indicates whether the tab bar is translucent
  translucent :: Boolean,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | Color of unselected tab icons. Available since iOS 10.
  unselectedItemTintColor :: String,
  
  -- | Color of text on unselected tabs
  unselectedTintColor :: String,
  key :: String,
  children :: Array JSX
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



-- | @see https://facebook.github.io/react-native/docs/textinput.html#props
type TextInputProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Specifies whether fonts should scale to respect Text Size accessibility settings.
  -- | The default is `true`.
  allowFontScaling :: Boolean,
  
  -- | Can tell TextInput to automatically capitalize certain characters.
  -- |       characters: all characters,
  -- |       words: first letter of each word
  -- |       sentences: first letter of each sentence (default)
  -- |       none: don't auto capitalize anything
  -- | https://facebook.github.io/react-native/docs/textinput.html#autocapitalize
  autoCapitalize :: String,
  
  -- | Determines which content to suggest on auto complete, e.g.`username`.
  -- | To disable auto complete, use `off`.
  -- | *Android Only*
  -- | The following values work on Android only:
  -- | - `username`
  -- | - `password`
  -- | - `email`
  -- | - `name`
  -- | - `tel`
  -- | - `street-address`
  -- | - `postal-code`
  -- | - `cc-number`
  -- | - `cc-csc`
  -- | - `cc-exp`
  -- | - `cc-exp-month`
  -- | - `cc-exp-year`
  -- | - `off`
  autoCompleteType :: String,
  
  -- | If false, disables auto-correct.
  -- | The default value is true.
  autoCorrect :: Boolean,
  
  -- | If true, focuses the input on componentDidMount.
  -- | The default value is false.
  autoFocus :: Boolean,
  
  -- | If true, the text field will blur when submitted.
  -- | The default value is true.
  blurOnSubmit :: Boolean,
  
  -- | If true, caret is hidden. The default value is false.
  caretHidden :: Boolean,
  
  -- | enum('never', 'while-editing', 'unless-editing', 'always')
  -- | When the clear button should appear on the right side of the text view
  clearButtonMode :: String,
  
  -- | If true, clears the text field automatically when editing begins
  clearTextOnFocus :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | If true, context menu is hidden. The default value is false.
  contextMenuHidden :: Boolean,
  
  -- | Determines the types of data converted to clickable URLs in the text input.
  -- | Only valid if `multiline={true}` and `editable={false}`.
  -- | By default no data types are detected.
  -- | You can provide one type or an array of many types.
  -- | Possible values for `dataDetectorTypes` are:
  -- | - `'phoneNumber'`
  -- | - `'link'`
  -- | - `'address'`
  -- | - `'calendarEvent'`
  -- | - `'none'`
  -- | - `'all'`
  dataDetectorTypes :: (Array String),
  
  -- | Provides an initial value that will change when the user starts typing.
  -- | Useful for simple use-cases where you don't want to deal with listening to events
  -- | and updating the value prop to keep the controlled state in sync.
  defaultValue :: String,
  
  -- | When false, if there is a small amount of space available around a text input (e.g. landscape orientation on a phone),
  -- |    the OS may choose to have the user edit the text inside of a full screen text input mode.
  -- | When true, this feature is disabled and users will always edit the text directly inside of the text input.
  -- | Defaults to false.
  disableFullscreenUI :: Boolean,
  
  -- | If false, text is not editable. The default value is true.
  editable :: Boolean,
  
  -- | If true, the keyboard disables the return key when there is no text and automatically enables it when there is text.
  -- | The default value is false.
  enablesReturnKeyAutomatically :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | If defined, the provided image resource will be rendered on the left.
  inlineImageLeft :: String,
  
  -- | Padding between the inline image, if any, and the text input itself.
  inlineImagePadding :: Number,
  
  -- | Used to connect to an InputAccessoryView. Not part of react-natives documentation, but present in examples and
  -- | code.
  -- | See https://facebook.github.io/react-native/docs/inputaccessoryview.html for more information.
  inputAccessoryViewID :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Determines the color of the keyboard.
  keyboardAppearance :: String,
  
  -- | enum("default", 'numeric', 'email-address', "ascii-capable", 'numbers-and-punctuation', 'url', 'number-pad', 'phone-pad', 'name-phone-pad',
  -- | 'decimal-pad', 'twitter', 'web-search', 'visible-password')
  -- | Determines which keyboard to open, e.g.numeric.
  -- | The following values work across platforms: - default - numeric - email-address - phone-pad
  -- | The following values work on iOS: - ascii-capable - numbers-and-punctuation - url - number-pad - name-phone-pad - decimal-pad - twitter - web-search
  -- | The following values work on Android: - visible-password
  keyboardType :: String,
  
  -- | Specifies largest possible scale a font can reach when allowFontScaling is enabled. Possible values:
  -- | - null/undefined (default): inherit from the parent node or the global default (0)
  -- | - 0: no max, ignore parent/global default
  -- | - >= 1: sets the maxFontSizeMultiplier of this node to this value
  maxFontSizeMultiplier :: String,
  
  -- | Limits the maximum number of characters that can be entered.
  -- | Use this instead of implementing the logic in JS to avoid flicker.
  maxLength :: Number,
  
  -- | If true, the text input can be multiple lines. The default value is false.
  multiline :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | Sets the number of lines for a TextInput.
  -- | Use it with multiline set to true to be able to fill the lines.
  numberOfLines :: Number,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Callback that is called when the text input is blurred
  onBlur :: (EffectFn1 (NativeSyntheticEvent TextInputFocusEventData) Unit),
  
  -- | Callback that is called when the text input's text changes.
  onChange :: (EffectFn1 (NativeSyntheticEvent TextInputChangeEventData) Unit),
  
  -- | Callback that is called when the text input's text changes.
  -- | Changed text is passed as an argument to the callback handler.
  onChangeText :: (EffectFn1 String Unit),
  
  -- | Callback that is called when the text input's content size changes.
  -- | This will be called with
  -- | `{ nativeEvent: { contentSize: { width, height } } }`.
  -- | Only called for multiline text inputs.
  onContentSizeChange :: (EffectFn1 (NativeSyntheticEvent TextInputContentSizeChangeEventData) Unit),
  
  -- | Callback that is called when text input ends.
  onEndEditing :: (EffectFn1 (NativeSyntheticEvent TextInputEndEditingEventData) Unit),
  
  -- | Callback that is called when the text input is focused
  onFocus :: (EffectFn1 (NativeSyntheticEvent TextInputFocusEventData) Unit),
  
  -- | Callback that is called when a key is pressed.
  -- | This will be called with
  -- |   `{ nativeEvent: { key: keyValue } }`
  -- | where keyValue is 'Enter' or 'Backspace' for respective keys and the typed-in character otherwise including ' ' for space.
  -- | Fires before onChange callbacks.
  -- | Note: on Android only the inputs from soft keyboard are handled, not the hardware keyboard inputs.
  onKeyPress :: (EffectFn1 (NativeSyntheticEvent TextInputKeyPressEventData) Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Invoked on content scroll with
  -- |   `{ nativeEvent: { contentOffset: { x, y } } }`.
  -- | May also contain other properties from ScrollEvent but on Android contentSize is not provided for performance reasons.
  onScroll :: (EffectFn1 (NativeSyntheticEvent TextInputScrollEventData) Unit),
  
  -- | Callback that is called when the text input selection is changed.
  onSelectionChange :: (EffectFn1 (NativeSyntheticEvent TextInputSelectionChangeEventData) Unit),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Callback that is called when the text input's submit button is pressed.
  onSubmitEditing :: (EffectFn1 (NativeSyntheticEvent TextInputSubmitEditingEventData) Unit),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The string that will be rendered before text input has been entered
  placeholder :: String,
  
  -- | The text color of the placeholder string
  placeholderTextColor :: String,
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Sets the return key to the label. Use it instead of `returnKeyType`.
  -- | @platform android
  returnKeyLabel :: String,
  
  -- | enum('default', 'go', 'google', 'join', 'next', 'route', 'search', 'send', 'yahoo', 'done', 'emergency-call')
  -- | Determines how the return key should look.
  returnKeyType :: String,
  
  -- | If false, scrolling of the text view will be disabled. The default value is true. Only works with multiline={true}
  scrollEnabled :: Boolean,
  
  -- | If true, the text input obscures the text entered so that sensitive text like passwords stay secure.
  -- | The default value is false.
  secureTextEntry :: Boolean,
  
  -- | If true, all text will automatically be selected on focus
  selectTextOnFocus :: Boolean,
  
  -- | The start and end of the text input's selection. Set start and end to
  -- | the same value to position the cursor.
  selection :: { start :: Number, end :: Number },
  
  -- | The highlight (and cursor on ios) color of the text input
  selectionColor :: String,
  
  -- | See DocumentSelectionState.js, some state that is responsible for maintaining selection information for a document
  selectionState :: DocumentSelectionState,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  
  -- | If false, disables spell-check style (i.e. red underlines). The default value is inherited from autoCorrect
  spellCheck :: Boolean,
  
  -- | Styles
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests
  testID :: String,
  
  -- | Vertically align text when `multiline` is set to true
  textAlignVertical :: String,
  
  -- | Set text break strategy on Android API Level 23+, possible values are simple, highQuality, balanced
  -- | The default value is simple.
  textBreakStrategy :: String,
  
  -- | Give the keyboard and the system information about the expected
  -- | semantic meaning for the content that users enter.
  -- | For iOS 11+ you can set `textContentType` to `username` or `password` to
  -- | enable autofill of login details from the device keychain.
  -- | For iOS 12+ `newPassword` can be used to indicate a new password input the
  -- | user may want to save in the keychain, and `oneTimeCode` can be used to indicate
  -- | that a field can be autofilled by a code arriving in an SMS.
  -- | To disable autofill, set textContentType to `none`.
  -- | Possible values for `textContentType` are:
  -- |   - `'none'`
  -- |   - `'URL'`
  -- |   - `'addressCity'`
  -- |   - `'addressCityAndState'`
  -- |   - `'addressState'`
  -- |   - `'countryName'`
  -- |   - `'creditCardNumber'`
  -- |   - `'emailAddress'`
  -- |   - `'familyName'`
  -- |   - `'fullStreetAddress'`
  -- |   - `'givenName'`
  -- |   - `'jobTitle'`
  -- |   - `'location'`
  -- |   - `'middleName'`
  -- |   - `'name'`
  -- |   - `'namePrefix'`
  -- |   - `'nameSuffix'`
  -- |   - `'nickname'`
  -- |   - `'organizationName'`
  -- |   - `'postalCode'`
  -- |   - `'streetAddressLine1'`
  -- |   - `'streetAddressLine2'`
  -- |   - `'sublocality'`
  -- |   - `'telephoneNumber'`
  -- |   - `'username'`
  -- |   - `'password'`
  -- |   - `'newPassword'`
  -- |   - `'oneTimeCode'`
  textContentType :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  
  -- | The color of the textInput underline.
  underlineColorAndroid :: String,
  
  -- | The value to show for the text input. TextInput is a controlled component,
  -- | which means the native value will be forced to match this value prop if provided.
  -- | For most uses this works great, but in some cases this may cause flickering - one common cause is preventing edits by keeping value the same.
  -- | In addition to simply setting the same value, either set editable={false},
  -- | or set/update maxLength to prevent unwanted edits without flicker.
  value :: String,
  key :: String,
  children :: Array JSX
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
  ( 
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Specifies whether font should be scaled down automatically to fit given style constraints.
  adjustsFontSizeToFit :: Boolean,
  
  -- | Specifies whether fonts should scale to respect Text Size accessibility settings.
  -- | The default is `true`.
  allowFontScaling :: Boolean,
  
  -- | This can be one of the following values:
  -- | - `head` - The line is displayed so that the end fits in the container and the missing text
  -- | at the beginning of the line is indicated by an ellipsis glyph. e.g., "...wxyz"
  -- | - `middle` - The line is displayed so that the beginning and end fit in the container and the
  -- | missing text in the middle is indicated by an ellipsis glyph. "ab...yz"
  -- | - `tail` - The line is displayed so that the beginning fits in the container and the
  -- | missing text at the end of the line is indicated by an ellipsis glyph. e.g., "abcd..."
  -- | - `clip` - Lines are not drawn past the edge of the text container.
  -- | The default is `tail`.
  -- | `numberOfLines` must be set in conjunction with this prop.
  -- | > `clip` is working only for iOS
  ellipsizeMode :: String,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | Line Break mode. Works only with numberOfLines.
  -- | clip is working only for iOS
  lineBreakMode :: String,
  
  -- | Specifies largest possible scale a font can reach when allowFontScaling is enabled. Possible values:
  -- | - null/undefined (default): inherit from the parent node or the global default (0)
  -- | - 0: no max, ignore parent/global default
  -- | - >= 1: sets the maxFontSizeMultiplier of this node to this value
  maxFontSizeMultiplier :: String,
  
  -- | Specifies smallest possible scale a font can reach when adjustsFontSizeToFit is enabled. (values 0.01-1.0).
  minimumFontScale :: Number,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Used to truncate the text with an ellipsis after computing the text
  -- | layout, including line wrapping, such that the total number of lines
  -- | does not exceed this number.
  -- | This prop is commonly used with `ellipsizeMode`.
  numberOfLines :: Number,
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | This function is called on long press.
  -- | e.g., `onLongPress={this.increaseSize}>``
  -- |      *
  onLongPress :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | This function is called on press.
  -- | Text intrinsically supports press handling with a default highlight state (which can be disabled with suppressHighlighting).
  onPress :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Lets the user select text, to use the native copy and paste functionality.
  selectable :: Boolean,
  
  -- | The highlight color of the text.
  selectionColor :: String,
  
  -- | @see https://facebook.github.io/react-native/docs/text.html#style
  style :: CSS,
  
  -- | When `true`, no visual change is made when text is pressed down. By
  -- | default, a gray oval highlights the text on press down.
  suppressHighlighting :: Boolean,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | Set text break strategy on Android API Level 23+
  -- | default is `highQuality`.
  textBreakStrategy :: String,
  key :: String,
  children :: Array JSX
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Sets possible actions on the toolbar as part of the action menu. These are displayed as icons
  -- | or text on the right side of the widget. If they don't fit they are placed in an 'overflow'
  -- | menu.
  -- | This property takes an array of objects, where each object has the following keys:
  -- | * `title`: **required**, the title of this action
  -- | * `icon`: the icon for this action, e.g. `require('./some_icon.png')`
  -- | * `show`: when to show this action as an icon or hide it in the overflow menu: `always`,
  -- | `ifRoom` or `never`
  -- | * `showWithText`: boolean, whether to show text alongside the icon or not
  actions :: (Array { title :: String, icon :: ImageURISource, show :: String, showWithText :: Boolean }),
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | Sets the content inset for the toolbar ending edge.
  -- | The content inset affects the valid area for Toolbar content other
  -- | than the navigation button and menu. Insets define the minimum
  -- | margin for these components and can be used to effectively align
  -- | Toolbar content along well-known gridlines.
  contentInsetEnd :: Number,
  
  -- | Sets the content inset for the toolbar starting edge.
  -- | The content inset affects the valid area for Toolbar content
  -- | other than the navigation button and menu. Insets define the
  -- | minimum margin for these components and can be used to effectively
  -- | align Toolbar content along well-known gridlines.
  contentInsetStart :: Number,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Sets the toolbar logo.
  logo :: ImageURISource,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Sets the navigation icon.
  navIcon :: ImageURISource,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Callback that is called when an action is selected. The only
  -- | argument that is passed to the callback is the position of the
  -- | action in the actions array.
  onActionSelected :: (EffectFn1 Number Unit),
  
  -- | Callback called when the icon is selected.
  onIconClicked :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Sets the overflow icon.
  overflowIcon :: ImageURISource,
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Used to set the toolbar direction to RTL.
  -- | In addition to this property you need to add
  -- | android:supportsRtl="true"
  -- | to your application AndroidManifest.xml and then call
  -- | setLayoutDirection(LayoutDirection.RTL) in your MainActivity
  -- | onCreate method.
  rtl :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Sets the toolbar subtitle.
  subtitle :: String,
  
  -- | Sets the toolbar subtitle color.
  subtitleColor :: String,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | Sets the toolbar title.
  title :: String,
  
  -- | Sets the toolbar title color.
  titleColor :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
  )


toolbarAndroid
  :: forall attrs attrs_  
  . Union attrs attrs_ (ToolbarAndroidProps  )
  => Record attrs
  -> JSX
toolbarAndroid props = unsafeCreateNativeElement "ToolbarAndroid" props
 

toolbarAndroid_ :: Array JSX -> JSX
toolbarAndroid_ children = toolbarAndroid { children }



-- | @see https://facebook.github.io/react-native/docs/touchablehighlight.html#props
type TouchableHighlightProps  = 
  ( 
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Determines what the opacity of the wrapped view should be when touch is active.
  activeOpacity :: Number,
  
  -- | Delay in ms, from onPressIn, before onLongPress is called.
  delayLongPress :: Number,
  
  -- | Delay in ms, from the start of the touch, before onPressIn is called.
  delayPressIn :: Number,
  
  -- | Delay in ms, from the release of the touch, before onPressOut is called.
  delayPressOut :: Number,
  
  -- | If true, disable all interactions for this component.
  disabled :: Boolean,
  
  -- | *(Apple TV only)* TV preferred focus (see documentation for the View component).
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far your touch can start away from the button.
  -- | This is added to pressRetentionOffset when moving off of the button.
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch hits
  -- | two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | When `accessible` is true (which is the default) this may be called when
  -- | the OS-specific concept of "blur" occurs, meaning the element lost focus.
  -- | Some platforms may not have the concept of blur.
  onBlur :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit),
  
  -- | When `accessible` is true (which is the default) this may be called when
  -- | the OS-specific concept of "focus" occurs. Some platforms may not have
  -- | the concept of focus.
  onFocus :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit),
  
  -- | Called immediately after the underlay is hidden
  onHideUnderlay :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: {layout: {x, y, width, height}}}
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  onLongPress :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called when the touch is released,
  -- | but not if cancelled (e.g. by a scroll that steals the responder lock).
  onPress :: (EffectFn1 GestureResponderEvent Unit),
  onPressIn :: (EffectFn1 GestureResponderEvent Unit),
  onPressOut :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Called immediately after the underlay is shown
  onShowUnderlay :: (Effect Unit),
  
  -- | When the scroll view is disabled, this defines how far your
  -- | touch may move off of the button, before deactivating the button.
  -- | Once deactivated, try moving it back and you'll see that the button
  -- | is once again reactivated! Move it back and forth several times
  -- | while the scroll view is disabled. Ensure you pass in a constant
  -- | to reduce memory allocations.
  pressRetentionOffset :: Insets,
  
  -- | @see https://facebook.github.io/react-native/docs/view.html#style
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | enabled: If true, parallax effects are enabled.  Defaults to true.
  -- | shiftDistanceX: Defaults to 2.0.
  -- | shiftDistanceY: Defaults to 2.0.
  -- | tiltAngle: Defaults to 0.05.
  -- | magnification: Defaults to 1.0.
  -- | pressMagnification: Defaults to 1.0.
  -- | pressDuration: Defaults to 0.3.
  -- | pressDelay: Defaults to 0.0.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | The color of the underlay that will show through when the touch is active.
  underlayColor :: String,
  key :: String,
  children :: Array JSX
  )


touchableHighlight
  :: forall attrs attrs_  
  . Union attrs attrs_ (TouchableHighlightProps  )
  => Record attrs
  -> JSX
touchableHighlight props = unsafeCreateNativeElement "TouchableHighlight" props
 

touchableHighlight_ :: Array JSX -> JSX
touchableHighlight_ children = touchableHighlight { children }



-- | @see https://facebook.github.io/react-native/docs/touchableopacity.html#props
type TouchableNativeFeedbackProps  = 
  ( 
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Determines the type of background drawable that's going to be used to display feedback.
  -- | It takes an object with type property and extra data depending on the type.
  -- | It's recommended to use one of the following static methods to generate that dictionary:
  -- |       1) TouchableNativeFeedback.SelectableBackground() - will create object that represents android theme's
  -- |          default background for selectable elements (?android:attr/selectableItemBackground)
  -- |       2) TouchableNativeFeedback.SelectableBackgroundBorderless() - will create object that represent android
  -- |          theme's default background for borderless selectable elements
  -- |          (?android:attr/selectableItemBackgroundBorderless). Available on android API level 21+
  -- |       3) TouchableNativeFeedback.Ripple(color, borderless) - will create object that represents ripple drawable
  -- |          with specified color (as a string). If property borderless evaluates to true the ripple will render
  -- |          outside of the view bounds (see native actionbar buttons as an example of that behavior). This background
  -- |          type is available on Android API level 21+
  background :: (Object Foreign),
  
  -- | Delay in ms, from onPressIn, before onLongPress is called.
  delayLongPress :: Number,
  
  -- | Delay in ms, from the start of the touch, before onPressIn is called.
  delayPressIn :: Number,
  
  -- | Delay in ms, from the release of the touch, before onPressOut is called.
  delayPressOut :: Number,
  
  -- | If true, disable all interactions for this component.
  disabled :: Boolean,
  
  -- | *(Apple TV only)* TV preferred focus (see documentation for the View component).
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far your touch can start away from the button.
  -- | This is added to pressRetentionOffset when moving off of the button.
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch hits
  -- | two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | When `accessible` is true (which is the default) this may be called when
  -- | the OS-specific concept of "blur" occurs, meaning the element lost focus.
  -- | Some platforms may not have the concept of blur.
  onBlur :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit),
  
  -- | When `accessible` is true (which is the default) this may be called when
  -- | the OS-specific concept of "focus" occurs. Some platforms may not have
  -- | the concept of focus.
  onFocus :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: {layout: {x, y, width, height}}}
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  onLongPress :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called when the touch is released,
  -- | but not if cancelled (e.g. by a scroll that steals the responder lock).
  onPress :: (EffectFn1 GestureResponderEvent Unit),
  onPressIn :: (EffectFn1 GestureResponderEvent Unit),
  onPressOut :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | When the scroll view is disabled, this defines how far your
  -- | touch may move off of the button, before deactivating the button.
  -- | Once deactivated, try moving it back and you'll see that the button
  -- | is once again reactivated! Move it back and forth several times
  -- | while the scroll view is disabled. Ensure you pass in a constant
  -- | to reduce memory allocations.
  pressRetentionOffset :: Insets,
  
  -- | //FIXME: not in doc but available in examples
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | enabled: If true, parallax effects are enabled.  Defaults to true.
  -- | shiftDistanceX: Defaults to 2.0.
  -- | shiftDistanceY: Defaults to 2.0.
  -- | tiltAngle: Defaults to 0.05.
  -- | magnification: Defaults to 1.0.
  -- | pressMagnification: Defaults to 1.0.
  -- | pressDuration: Defaults to 0.3.
  -- | pressDelay: Defaults to 0.0.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  useForeground :: Boolean,
  key :: String,
  children :: Array JSX
  )


touchableNativeFeedback
  :: forall attrs attrs_  
  . Union attrs attrs_ (TouchableNativeFeedbackProps  )
  => Record attrs
  -> JSX
touchableNativeFeedback props = unsafeCreateNativeElement "TouchableNativeFeedback" props
 

touchableNativeFeedback_ :: Array JSX -> JSX
touchableNativeFeedback_ children = touchableNativeFeedback { children }



-- | @see https://facebook.github.io/react-native/docs/touchableopacity.html#props
type TouchableOpacityProps  = 
  ( 
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Determines what the opacity of the wrapped view should be when touch is active.
  -- | Defaults to 0.2
  activeOpacity :: Number,
  
  -- | Delay in ms, from onPressIn, before onLongPress is called.
  delayLongPress :: Number,
  
  -- | Delay in ms, from the start of the touch, before onPressIn is called.
  delayPressIn :: Number,
  
  -- | Delay in ms, from the release of the touch, before onPressOut is called.
  delayPressOut :: Number,
  
  -- | If true, disable all interactions for this component.
  disabled :: Boolean,
  
  -- | *(Apple TV only)* TV preferred focus (see documentation for the View component).
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far your touch can start away from the button.
  -- | This is added to pressRetentionOffset when moving off of the button.
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch hits
  -- | two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | When `accessible` is true (which is the default) this may be called when
  -- | the OS-specific concept of "blur" occurs, meaning the element lost focus.
  -- | Some platforms may not have the concept of blur.
  onBlur :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit),
  
  -- | When `accessible` is true (which is the default) this may be called when
  -- | the OS-specific concept of "focus" occurs. Some platforms may not have
  -- | the concept of focus.
  onFocus :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: {layout: {x, y, width, height}}}
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  onLongPress :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called when the touch is released,
  -- | but not if cancelled (e.g. by a scroll that steals the responder lock).
  onPress :: (EffectFn1 GestureResponderEvent Unit),
  onPressIn :: (EffectFn1 GestureResponderEvent Unit),
  onPressOut :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | When the scroll view is disabled, this defines how far your
  -- | touch may move off of the button, before deactivating the button.
  -- | Once deactivated, try moving it back and you'll see that the button
  -- | is once again reactivated! Move it back and forth several times
  -- | while the scroll view is disabled. Ensure you pass in a constant
  -- | to reduce memory allocations.
  pressRetentionOffset :: Insets,
  
  -- | //FIXME: not in doc but available in examples
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | enabled: If true, parallax effects are enabled.  Defaults to true.
  -- | shiftDistanceX: Defaults to 2.0.
  -- | shiftDistanceY: Defaults to 2.0.
  -- | tiltAngle: Defaults to 0.05.
  -- | magnification: Defaults to 1.0.
  -- | pressMagnification: Defaults to 1.0.
  -- | pressDuration: Defaults to 0.3.
  -- | pressDelay: Defaults to 0.0.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  key :: String,
  children :: Array JSX
  )


touchableOpacity
  :: forall attrs attrs_  
  . Union attrs attrs_ (TouchableOpacityProps  )
  => Record attrs
  -> JSX
touchableOpacity props = unsafeCreateNativeElement "TouchableOpacity" props
 

touchableOpacity_ :: Array JSX -> JSX
touchableOpacity_ children = touchableOpacity { children }



-- | @see https://facebook.github.io/react-native/docs/touchablewithoutfeedback.html#props
type TouchableWithoutFeedbackProps  = 
  ( 
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Delay in ms, from onPressIn, before onLongPress is called.
  delayLongPress :: Number,
  
  -- | Delay in ms, from the start of the touch, before onPressIn is called.
  delayPressIn :: Number,
  
  -- | Delay in ms, from the release of the touch, before onPressOut is called.
  delayPressOut :: Number,
  
  -- | If true, disable all interactions for this component.
  disabled :: Boolean,
  
  -- | *(Apple TV only)* TV preferred focus (see documentation for the View component).
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far your touch can start away from the button.
  -- | This is added to pressRetentionOffset when moving off of the button.
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch hits
  -- | two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | When `accessible` is true (which is the default) this may be called when
  -- | the OS-specific concept of "blur" occurs, meaning the element lost focus.
  -- | Some platforms may not have the concept of blur.
  onBlur :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit),
  
  -- | When `accessible` is true (which is the default) this may be called when
  -- | the OS-specific concept of "focus" occurs. Some platforms may not have
  -- | the concept of focus.
  onFocus :: (EffectFn1 (NativeSyntheticEvent TargetedEvent) Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: {layout: {x, y, width, height}}}
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  onLongPress :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called when the touch is released,
  -- | but not if cancelled (e.g. by a scroll that steals the responder lock).
  onPress :: (EffectFn1 GestureResponderEvent Unit),
  onPressIn :: (EffectFn1 GestureResponderEvent Unit),
  onPressOut :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | When the scroll view is disabled, this defines how far your
  -- | touch may move off of the button, before deactivating the button.
  -- | Once deactivated, try moving it back and you'll see that the button
  -- | is once again reactivated! Move it back and forth several times
  -- | while the scroll view is disabled. Ensure you pass in a constant
  -- | to reduce memory allocations.
  pressRetentionOffset :: Insets,
  
  -- | //FIXME: not in doc but available in examples
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | enabled: If true, parallax effects are enabled.  Defaults to true.
  -- | shiftDistanceX: Defaults to 2.0.
  -- | shiftDistanceY: Defaults to 2.0.
  -- | tiltAngle: Defaults to 0.05.
  -- | magnification: Defaults to 1.0.
  -- | pressMagnification: Defaults to 1.0.
  -- | pressDuration: Defaults to 0.3.
  -- | pressDelay: Defaults to 0.0.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  key :: String,
  children :: Array JSX
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
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | Index of initial page that should be selected. Use `setPage` method to
  -- | update the page, and `onPageSelected` to monitor page changes
  initialPage :: Number,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Determines whether the keyboard gets dismissed in response to a drag.
  -- |    - 'none' (the default), drags do not dismiss the keyboard.
  -- |    - 'on-drag', the keyboard is dismissed when a drag begins.
  keyboardDismissMode :: String,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Executed when transitioning between pages (ether because of animation for
  -- | the requested page change or when user is swiping/dragging between pages)
  -- | The `event.nativeEvent` object for this callback will carry following data:
  -- |   - position - index of first page from the left that is currently visible
  -- |   - offset - value from range [0,1) describing stage between page transitions.
  -- |     Value x means that (1 - x) fraction of the page at "position" index is
  -- |     visible, and x fraction of the next page is visible.
  onPageScroll :: (EffectFn1 (NativeSyntheticEvent ViewPagerAndroidOnPageScrollEventData) Unit),
  
  -- | Function called when the page scrolling state has changed.
  -- | The page scrolling state can be in 3 states:
  -- | - idle, meaning there is no interaction with the page scroller happening at the time
  -- | - dragging, meaning there is currently an interaction with the page scroller
  -- | - settling, meaning that there was an interaction with the page scroller, and the
  -- |    page scroller is now finishing it's closing or opening animation
  onPageScrollStateChanged :: (EffectFn1 String Unit),
  
  -- | This callback will be called once ViewPager finish navigating to selected page
  -- | (when user swipes between pages). The `event.nativeEvent` object passed to this
  -- | callback will have following fields:
  -- |   - position - index of page that has been selected
  onPageSelected :: (EffectFn1 (NativeSyntheticEvent ViewPagerAndroidOnPageSelectedEventData) Unit),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Blank space to show between pages. This is only visible while scrolling, pages are still
  -- | edge-to-edge.
  pageMargin :: Number,
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | When false, the content does not scroll.
  -- | The default value is true.
  scrollEnabled :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
  )


viewPagerAndroid
  :: forall attrs attrs_  
  . Union attrs attrs_ (ViewPagerAndroidProps  )
  => Record attrs
  -> JSX
viewPagerAndroid props = unsafeCreateNativeElement "ViewPagerAndroid" props
 

viewPagerAndroid_ :: Array JSX -> JSX
viewPagerAndroid_ children = viewPagerAndroid { children }



-- | @see https://facebook.github.io/react-native/docs/view.html#props
type ViewProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  key :: String,
  children :: Array JSX
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
    
  -- | Similar to `viewAreaCoveragePercentThreshold`, but considers the percent of the item that is visible,
  -- | rather than the fraction of the viewable area it covers.
  itemVisiblePercentThreshold  :: (Undefinable  Number)
  , 
  -- | Minimum amount of time (in milliseconds) that an item must be physically viewable before the
  -- | viewability callback will be fired. A high number means that scrolling through content without
  -- | stopping will not mark the content as viewable.
  minimumViewTime  :: (Undefinable  Number)
  , 
  -- | Percent of viewport that must be covered for a partially occluded item to count as
  -- | "viewable", 0-100. Fully visible items are always considered viewable. A value of 0 means
  -- | that a single pixel in the viewport makes the item viewable, and a value of 100 means that
  -- | an item must be either entirely visible or cover the entire viewport to count as viewable.
  viewAreaCoveragePercentThreshold  :: (Undefinable  Number)
  , 
  -- | Nothing is considered viewable until the user scrolls or `recordInteraction` is called after
  -- | render.
  waitForInteraction  :: (Undefinable  Boolean)
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
    
  -- | The data sent from a WebView; can only be a string.
  data :: String
}


type WebViewNativeConfig  = {
    component  :: (Undefinable  Foreign)
  , props  :: (Undefinable  (Object Foreign))
  , viewManager  :: (Undefinable  (Object Foreign))
}



-- | @see https://facebook.github.io/react-native/docs/webview.html#props
type WebViewProps  = 
  ( 
  -- | Provides an array of custom actions available for accessibility.
  -- | @platform ios
  accessibilityActions :: (Array String),
  
  -- | In some cases, we also want to alert the end user of the type of selected component (i.e., that it is a “button”).
  -- | If we were using native buttons, this would work automatically. Since we are using javascript, we need to
  -- | provide a bit more context for TalkBack. To do so, you must specify the ‘accessibilityComponentType’ property
  -- | for any UI component. For instances, we support ‘button’, ‘radiobutton_checked’ and ‘radiobutton_unchecked’ and so on.
  -- | @platform android
  accessibilityComponentType :: String,
  
  -- | A Boolean value indicating whether the accessibility elements contained within this accessibility element
  -- | are hidden to the screen reader.
  -- | @platform ios
  accessibilityElementsHidden :: Boolean,
  
  -- | An accessibility hint helps users understand what will happen when they perform an action on the accessibility element when that result is not obvious from the accessibility label.
  accessibilityHint :: String,
  
  -- | https://facebook.github.io/react-native/docs/accessibility#accessibilityignoresinvertcolorsios
  -- | @platform ios
  accessibilityIgnoresInvertColors :: Boolean,
  
  -- | Overrides the text that's read by the screen reader when the user interacts with the element. By default, the
  -- | label is constructed by traversing all the children and accumulating all the Text nodes separated by space.
  accessibilityLabel :: String,
  
  -- | Indicates to accessibility services whether the user should be notified when this view changes.
  -- | Works for Android API >= 19 only.
  -- | See http://developer.android.com/reference/android/view/View.html#attr_android:accessibilityLiveRegion for references.
  -- | @platform android
  accessibilityLiveRegion :: String,
  
  -- | Accessibility Role tells a person using either VoiceOver on iOS or TalkBack on Android the type of element that is focused on.
  accessibilityRole :: String,
  
  -- | Accessibility State tells a person using either VoiceOver on iOS or TalkBack on Android the state of the element currently focused on.
  accessibilityStates :: (Array String),
  
  -- | Accessibility traits tell a person using VoiceOver what kind of element they have selected.
  -- | Is this element a label? A button? A header? These questions are answered by accessibilityTraits.
  -- | @platform ios
  accessibilityTraits :: (Array String),
  
  -- | A Boolean value indicating whether VoiceOver should ignore the elements within views that are siblings of the receiver.
  -- | @platform ios
  accessibilityViewIsModal :: Boolean,
  
  -- | When true, indicates that the view is an accessibility element.
  -- | By default, all the touchable elements are accessible.
  accessible :: Boolean,
  
  -- | Sets whether the webview allows access to the file system.
  allowFileAccess :: Boolean,
  
  -- | Determines whether HTML5 videos play inline or use the native
  -- | full-screen controller. default value false
  -- | NOTE : "In order * for video to play inline, not only does
  -- | this property need to be set to true, but the video element
  -- | in the HTML document must also include the webkit-playsinline
  -- | attribute."
  allowsInlineMediaPlayback :: Boolean,
  
  -- | Controls whether to adjust the content inset for web views that are
  -- | placed behind a navigation bar, tab bar, or toolbar. The default value
  -- | is `true`.
  automaticallyAdjustContentInsets :: Boolean,
  
  -- | Boolean value that determines whether the web view bounces
  -- | when it reaches the edge of the content. The default value is `true`.
  -- | @platform ios
  bounces :: Boolean,
  
  -- | Views that are only used to layout their children or otherwise don't draw anything
  -- | may be automatically removed from the native hierarchy as an optimization.
  -- | Set this property to false to disable this optimization and ensure that this View exists in the native view hierarchy.
  collapsable :: Boolean,
  
  -- | The amount by which the web view content is inset from the edges of
  -- | the scroll view. Defaults to {top: 0, left: 0, bottom: 0, right: 0}.
  contentInset :: Insets,
  
  -- | Determines the types of data converted to clickable URLs in
  -- | the web view’s content. By default only phone numbers are detected.
  -- | You can provide one type or an array of many types.
  -- | Possible values for `dataDetectorTypes` are:
  -- | - `'phoneNumber'`
  -- | - `'link'`
  -- | - `'address'`
  -- | - `'calendarEvent'`
  -- | - `'none'`
  -- | - `'all'`
  dataDetectorTypes :: (Array String),
  
  -- | A floating-point number that determines how quickly the scroll
  -- | view decelerates after the user lifts their finger. You may also
  -- | use string shortcuts "normal" and "fast" which match the
  -- | underlying iOS settings for UIScrollViewDecelerationRateNormal
  -- | and UIScrollViewDecelerationRateFast respectively.
  -- | - normal: 0.998 - fast: 0.99 (the default for iOS WebView)
  decelerationRate :: String,
  
  -- | Used on Android only, controls whether DOM Storage is enabled
  -- | or not android
  domStorageEnabled :: Boolean,
  
  -- | *(Apple TV only)* May be set to true to force the Apple TV focus engine to move focus to this view.
  -- | @platform ios
  hasTVPreferredFocus :: Boolean,
  
  -- | This defines how far a touch event can start away from the view.
  -- | Typical interface guidelines recommend touch targets that are at least
  -- | 30 - 40 points/density-independent pixels. If a Touchable view has
  -- | a height of 20 the touchable height can be extended to 40 with
  -- | hitSlop={{top: 10, bottom: 10, left: 0, right: 0}}
  -- | NOTE The touch area never extends past the parent view bounds and
  -- | the Z-index of sibling views always takes precedence if a touch
  -- | hits two overlapping views.
  hitSlop :: Insets,
  html :: String,
  
  -- | Controls how view is important for accessibility which is if it fires accessibility events
  -- | and if it is reported to accessibility services that query the screen.
  -- | Works for Android only. See http://developer.android.com/reference/android/R.attr.html#importantForAccessibility for references.
  -- | Possible values:
  -- |       'auto' - The system determines whether the view is important for accessibility - default (recommended).
  -- |       'yes' - The view is important for accessibility.
  -- |       'no' - The view is not important for accessibility.
  -- |       'no-hide-descendants' - The view is not important for accessibility, nor are any of its descendant views.
  importantForAccessibility :: String,
  
  -- | Set this to provide JavaScript that will be injected into the web page
  -- | when the view loads.
  injectedJavaScript :: String,
  
  -- | *(Apple TV only)* When set to true, this view will be focusable
  -- | and navigable using the Apple TV remote.
  -- | @platform ios
  isTVSelectable :: Boolean,
  
  -- | Used for android only, JS is enabled by default for WebView on iOS
  javaScriptEnabled :: Boolean,
  
  -- | Determines whether HTML5 audio & videos require the user to tap
  -- | before they can start playing. The default value is false.
  mediaPlaybackRequiresUserAction :: Boolean,
  
  -- | Specifies the mixed content mode. i.e WebView will allow a secure origin to load content from any other origin.
  -- | Possible values for mixedContentMode are:
  -- | 'never' (default) - WebView will not allow a secure origin to load content from an insecure origin.
  -- | 'always' - WebView will allow a secure origin to load content from any other origin, even if that origin is insecure.
  -- | 'compatibility' - WebView will attempt to be compatible with the approach of a modern web browser with regard to mixed content.
  mixedContentMode :: String,
  
  -- | Override the native component used to render the WebView. Enables a custom native
  -- | WebView which uses the same JavaScript as the original WebView.
  nativeConfig :: WebViewNativeConfig,
  
  -- | Used to reference react managed views from native code.
  nativeID :: String,
  
  -- | Whether this view needs to rendered offscreen and composited with an alpha in order to preserve 100% correct colors and blending behavior.
  -- | The default (false) falls back to drawing the component and its children
  -- | with an alpha applied to the paint used to draw each element instead of rendering the full component offscreen and compositing it back with an alpha value.
  -- | This default may be noticeable and undesired in the case where the View you are setting an opacity on
  -- | has multiple overlapping elements (e.g. multiple overlapping Views, or text and a background).
  -- | Rendering offscreen to preserve correct alpha behavior is extremely expensive
  -- | and hard to debug for non-native developers, which is why it is not turned on by default.
  -- | If you do need to enable this property for an animation,
  -- | consider combining it with renderToHardwareTextureAndroid if the view contents are static (i.e. it doesn't need to be redrawn each frame).
  -- | If that property is enabled, this View will be rendered off-screen once,
  -- | saved in a hardware texture, and then composited onto the screen with an alpha each frame without having to switch rendering targets on the GPU.
  needsOffscreenAlphaCompositing :: Boolean,
  
  -- | When `accessible` is true, the system will try to invoke this function
  -- | when the user performs an accessibility custom action.
  -- | @platform ios
  onAccessibilityAction :: (Effect Unit),
  
  -- | When `accessible` is true, the system will try to invoke this function when the user performs accessibility tap gesture.
  -- | @platform ios
  onAccessibilityTap :: (Effect Unit),
  
  -- | Invoked when load fails
  onError :: (EffectFn1 NavState Unit),
  
  -- | Invoked on mount and layout changes with
  -- | {nativeEvent: { layout: {x, y, width, height}}}.
  onLayout :: (EffectFn1 LayoutChangeEvent Unit),
  
  -- | Invoked when load finish
  onLoad :: (EffectFn1 NavState Unit),
  
  -- | Invoked when load either succeeds or fails
  onLoadEnd :: (EffectFn1 NavState Unit),
  
  -- | Invoked on load start
  onLoadStart :: (EffectFn1 NavState Unit),
  
  -- | When accessible is true, the system will invoke this function when the user performs the magic tap gesture.
  -- | @platform ios
  onMagicTap :: (Effect Unit),
  
  -- | Invoked when window.postMessage is called from WebView.
  onMessage :: (EffectFn1 (NativeSyntheticEvent WebViewMessageEventData) Unit),
  
  -- | Called for every touch move on the View when it is not the responder: does this view want to "claim" touch responsiveness?
  onMoveShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onMoveShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Function that is invoked when the `WebView` loading starts or ends.
  onNavigationStateChange :: (EffectFn1 NavState Unit),
  
  -- | If the View returns true and attempts to become the responder, one of the following will happen:
  onResponderEnd :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The View is now responding for touch events.
  -- | This is the time to highlight and show the user what is happening
  onResponderGrant :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | If the view is responding, the following handlers can be called:
  -- | The user is moving their finger
  onResponderMove :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else is the responder right now and will not release it
  onResponderReject :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Fired at the end of the touch, ie "touchUp"
  onResponderRelease :: (EffectFn1 GestureResponderEvent Unit),
  onResponderStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | The responder has been taken from the View.
  -- | Might be taken by other views after a call to onResponderTerminationRequest,
  -- | or might be taken by the OS without asking (happens with control center/ notification center on iOS)
  onResponderTerminate :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | Something else wants to become responder.
  -- | Should this view release the responder? Returning true allows release
  onResponderTerminationRequest :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | Allows custom handling of any webview requests by a JS handler.
  -- | Return true or false from this method to continue loading the
  -- | request.
  onShouldStartLoadWithRequest :: (EffectFn1 WebViewIOSLoadRequestEvent Boolean),
  
  -- | A view can become the touch responder by implementing the correct negotiation methods.
  -- | There are two methods to ask the view if it wants to become responder:
  -- | Does this view want to become responder on the start of a touch?
  onStartShouldSetResponder :: (EffectFn1 GestureResponderEvent Boolean),
  
  -- | onStartShouldSetResponder and onMoveShouldSetResponder are called with a bubbling pattern,
  -- | where the deepest node is called first.
  -- | That means that the deepest component will become responder when multiple Views return true for *ShouldSetResponder handlers.
  -- | This is desirable in most cases, because it makes sure all controls and buttons are usable.
  -- | However, sometimes a parent will want to make sure that it becomes responder.
  -- | This can be handled by using the capture phase.
  -- | Before the responder system bubbles up from the deepest component,
  -- | it will do a capture phase, firing on*ShouldSetResponderCapture.
  -- | So if a parent View wants to prevent the child from becoming responder on a touch start,
  -- | it should have a onStartShouldSetResponderCapture handler which returns true.
  onStartShouldSetResponderCapture :: (EffectFn1 GestureResponderEvent Boolean),
  onTouchCancel :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEnd :: (EffectFn1 GestureResponderEvent Unit),
  onTouchEndCapture :: (EffectFn1 GestureResponderEvent Unit),
  onTouchMove :: (EffectFn1 GestureResponderEvent Unit),
  onTouchStart :: (EffectFn1 GestureResponderEvent Unit),
  
  -- | List of origin strings to allow being navigated to.
  -- | The strings allow wildcards and get matched against just the origin (not the full URL).
  -- | If the user taps to navigate to a new page but the new page is not in this whitelist, the URL will be handled by the OS.
  -- | The default whitelisted origins are "http://" and "https://".
  originWhitelist :: (Array String),
  
  -- | In the absence of auto property, none is much like CSS's none value. box-none is as if you had applied the CSS class:
  -- | .box-none {
  -- |    pointer-events: none;
  -- | }
  -- | .box-none * {
  -- |    pointer-events: all;
  -- | }
  -- | box-only is the equivalent of
  -- | .box-only {
  -- |    pointer-events: all;
  -- | }
  -- | .box-only * {
  -- |    pointer-events: none;
  -- | }
  -- | But since pointerEvents does not affect layout/appearance, and we are already deviating from the spec by adding additional modes,
  -- | we opt to not include pointerEvents on style. On some platforms, we would need to implement it as a className anyways. Using style or not is an implementation detail of the platform.
  pointerEvents :: String,
  
  -- | This is a special performance property exposed by RCTView and is useful for scrolling content when there are many subviews,
  -- | most of which are offscreen. For this property to be effective, it must be applied to a view that contains many subviews that extend outside its bound.
  -- | The subviews must also have overflow: hidden, as should the containing view (or one of its superviews).
  removeClippedSubviews :: Boolean,
  
  -- | Function that returns a view to show if there's an error.
  renderError :: (Effect JSX),
  
  -- | Function that returns a loading indicator.
  renderLoading :: (Effect JSX),
  
  -- | Whether this view should render itself (and all of its children) into a single hardware texture on the GPU.
  -- | On Android, this is useful for animations and interactions that only modify opacity, rotation, translation, and/or scale:
  -- | in those cases, the view doesn't have to be redrawn and display lists don't need to be re-executed. The texture can just be
  -- | re-used and re-composited with different parameters. The downside is that this can use up limited video memory, so this prop should be set back to false at the end of the interaction/animation.
  renderToHardwareTextureAndroid :: Boolean,
  
  -- | Controls whether form autocomplete data should be saved
  saveFormDataDisabled :: Boolean,
  
  -- | sets whether the webpage scales to fit the view and the user can change the scale
  scalesPageToFit :: Boolean,
  
  -- | Boolean value that determines whether scrolling is enabled in the
  -- | `WebView`. The default value is `true`.
  scrollEnabled :: Boolean,
  
  -- | Whether this view should be rendered as a bitmap before compositing.
  -- | On iOS, this is useful for animations and interactions that do not modify this component's dimensions nor its children;
  -- | for example, when translating the position of a static view, rasterization allows the renderer to reuse a cached bitmap of a static view
  -- | and quickly composite it during each frame.
  -- | Rasterization incurs an off-screen drawing pass and the bitmap consumes memory.
  -- | Test and measure when using this property.
  shouldRasterizeIOS :: Boolean,
  source :: (Object Foreign),
  
  -- | Boolean value that forces the `WebView` to show the loading view
  -- | on the first load.
  startInLoadingState :: Boolean,
  style :: CSS,
  
  -- | Used to locate this view in end-to-end tests.
  testID :: String,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 1.0.
  -- | @platform ios
  tvParallaxMagnification :: Number,
  
  -- | *(Apple TV only)* Object with properties to control Apple TV parallax effects.
  -- | @platform ios
  tvParallaxProperties :: { enabled :: Boolean, shiftDistanceX :: Number, shiftDistanceY :: Number, tiltAngle :: Number, magnification :: Number, pressMagnification :: Number, pressDuration :: Number, pressDelay :: Number },
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceX :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 2.0.
  -- | @platform ios
  tvParallaxShiftDistanceY :: Number,
  
  -- | *(Apple TV only)* May be used to change the appearance of the Apple TV parallax effect when this view goes in or out of focus.  Defaults to 0.05.
  -- | @platform ios
  tvParallaxTiltAngle :: Number,
  url :: String,
  
  -- | If `true`, use WKWebView instead of UIWebView.
  useWebKit :: Boolean,
  
  -- | Sets the user-agent for the WebView.
  userAgent :: String,
  key :: String,
  children :: Array JSX
  )


webView
  :: forall attrs attrs_  
  . Union attrs attrs_ (WebViewProps  )
  => Record attrs
  -> JSX
webView props = unsafeCreateNativeElement "WebView" props
 

webView_ :: Array JSX -> JSX
webView_ children = webView { children }


