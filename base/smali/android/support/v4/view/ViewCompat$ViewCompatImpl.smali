.class interface abstract Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ViewCompatImpl"
.end annotation


# virtual methods
.method public abstract animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end method

.method public abstract canScrollHorizontally(Landroid/view/View;I)Z
.end method

.method public abstract canScrollVertically(Landroid/view/View;I)Z
.end method

.method public abstract combineMeasuredStates(II)I
.end method

.method public abstract dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
.end method

.method public abstract dispatchFinishTemporaryDetach(Landroid/view/View;)V
.end method

.method public abstract dispatchNestedFling(Landroid/view/View;FFZ)Z
.end method

.method public abstract dispatchNestedPreFling(Landroid/view/View;FF)Z
.end method

.method public abstract dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
.end method

.method public abstract dispatchNestedScroll(Landroid/view/View;IIII[I)Z
.end method

.method public abstract dispatchStartTemporaryDetach(Landroid/view/View;)V
.end method

.method public abstract getAccessibilityLiveRegion(Landroid/view/View;)I
.end method

.method public abstract getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.end method

.method public abstract getAlpha(Landroid/view/View;)F
.end method

.method public abstract getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
.end method

.method public abstract getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
.end method

.method public abstract getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
.end method

.method public abstract getElevation(Landroid/view/View;)F
.end method

.method public abstract getFitsSystemWindows(Landroid/view/View;)Z
.end method

.method public abstract getImportantForAccessibility(Landroid/view/View;)I
.end method

.method public abstract getLabelFor(Landroid/view/View;)I
.end method

.method public abstract getLayerType(Landroid/view/View;)I
.end method

.method public abstract getLayoutDirection(Landroid/view/View;)I
.end method

.method public abstract getMeasuredHeightAndState(Landroid/view/View;)I
.end method

.method public abstract getMeasuredState(Landroid/view/View;)I
.end method

.method public abstract getMeasuredWidthAndState(Landroid/view/View;)I
.end method

.method public abstract getMinimumHeight(Landroid/view/View;)I
.end method

.method public abstract getMinimumWidth(Landroid/view/View;)I
.end method

.method public abstract getOverScrollMode(Landroid/view/View;)I
.end method

.method public abstract getPaddingEnd(Landroid/view/View;)I
.end method

.method public abstract getPaddingStart(Landroid/view/View;)I
.end method

.method public abstract getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
.end method

.method public abstract getPivotX(Landroid/view/View;)F
.end method

.method public abstract getPivotY(Landroid/view/View;)F
.end method

.method public abstract getRotation(Landroid/view/View;)F
.end method

.method public abstract getRotationX(Landroid/view/View;)F
.end method

.method public abstract getRotationY(Landroid/view/View;)F
.end method

.method public abstract getScaleX(Landroid/view/View;)F
.end method

.method public abstract getScaleY(Landroid/view/View;)F
.end method

.method public abstract getScrollIndicators(Landroid/view/View;)I
.end method

.method public abstract getTransitionName(Landroid/view/View;)Ljava/lang/String;
.end method

.method public abstract getTranslationX(Landroid/view/View;)F
.end method

.method public abstract getTranslationY(Landroid/view/View;)F
.end method

.method public abstract getTranslationZ(Landroid/view/View;)F
.end method

.method public abstract getWindowSystemUiVisibility(Landroid/view/View;)I
.end method

.method public abstract getX(Landroid/view/View;)F
.end method

.method public abstract getY(Landroid/view/View;)F
.end method

.method public abstract getZ(Landroid/view/View;)F
.end method

.method public abstract hasAccessibilityDelegate(Landroid/view/View;)Z
.end method

.method public abstract hasNestedScrollingParent(Landroid/view/View;)Z
.end method

.method public abstract hasOnClickListeners(Landroid/view/View;)Z
.end method

.method public abstract hasOverlappingRendering(Landroid/view/View;)Z
.end method

.method public abstract hasTransientState(Landroid/view/View;)Z
.end method

.method public abstract isAttachedToWindow(Landroid/view/View;)Z
.end method

.method public abstract isImportantForAccessibility(Landroid/view/View;)Z
.end method

.method public abstract isLaidOut(Landroid/view/View;)Z
.end method

.method public abstract isNestedScrollingEnabled(Landroid/view/View;)Z
.end method

.method public abstract isOpaque(Landroid/view/View;)Z
.end method

.method public abstract isPaddingRelative(Landroid/view/View;)Z
.end method

.method public abstract jumpDrawablesToCurrentState(Landroid/view/View;)V
.end method

.method public abstract onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
.end method

.method public abstract onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public abstract onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
.end method

.method public abstract postInvalidateOnAnimation(Landroid/view/View;)V
.end method

.method public abstract postInvalidateOnAnimation(Landroid/view/View;IIII)V
.end method

.method public abstract postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
.end method

.method public abstract postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
.end method

.method public abstract requestApplyInsets(Landroid/view/View;)V
.end method

.method public abstract resolveSizeAndState(III)I
.end method

.method public abstract setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .param p2    # Landroid/support/v4/view/AccessibilityDelegateCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setAccessibilityLiveRegion(Landroid/view/View;I)V
.end method

.method public abstract setActivated(Landroid/view/View;Z)V
.end method

.method public abstract setAlpha(Landroid/view/View;F)V
.end method

.method public abstract setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
.end method

.method public abstract setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
.end method

.method public abstract setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
.end method

.method public abstract setElevation(Landroid/view/View;F)V
.end method

.method public abstract setFitsSystemWindows(Landroid/view/View;Z)V
.end method

.method public abstract setHasTransientState(Landroid/view/View;Z)V
.end method

.method public abstract setImportantForAccessibility(Landroid/view/View;I)V
.end method

.method public abstract setLabelFor(Landroid/view/View;I)V
.end method

.method public abstract setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
.end method

.method public abstract setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
.end method

.method public abstract setLayoutDirection(Landroid/view/View;I)V
.end method

.method public abstract setNestedScrollingEnabled(Landroid/view/View;Z)V
.end method

.method public abstract setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
.end method

.method public abstract setOverScrollMode(Landroid/view/View;I)V
.end method

.method public abstract setPaddingRelative(Landroid/view/View;IIII)V
.end method

.method public abstract setPivotX(Landroid/view/View;F)V
.end method

.method public abstract setPivotY(Landroid/view/View;F)V
.end method

.method public abstract setRotation(Landroid/view/View;F)V
.end method

.method public abstract setRotationX(Landroid/view/View;F)V
.end method

.method public abstract setRotationY(Landroid/view/View;F)V
.end method

.method public abstract setSaveFromParentEnabled(Landroid/view/View;Z)V
.end method

.method public abstract setScaleX(Landroid/view/View;F)V
.end method

.method public abstract setScaleY(Landroid/view/View;F)V
.end method

.method public abstract setScrollIndicators(Landroid/view/View;I)V
.end method

.method public abstract setScrollIndicators(Landroid/view/View;II)V
.end method

.method public abstract setTransitionName(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract setTranslationX(Landroid/view/View;F)V
.end method

.method public abstract setTranslationY(Landroid/view/View;F)V
.end method

.method public abstract setTranslationZ(Landroid/view/View;F)V
.end method

.method public abstract setX(Landroid/view/View;F)V
.end method

.method public abstract setY(Landroid/view/View;F)V
.end method

.method public abstract startNestedScroll(Landroid/view/View;I)Z
.end method

.method public abstract stopNestedScroll(Landroid/view/View;)V
.end method
