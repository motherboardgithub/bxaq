.class Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerLayoutCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "insets"    # Ljava/lang/Object;
    .param p3, "drawerGravity"    # I

    .prologue
    .line 296
    return-void
.end method

.method public configureApplyInsets(Landroid/view/View;)V
    .locals 0
    .param p1, "drawerLayout"    # Landroid/view/View;

    .prologue
    .line 288
    return-void
.end method

.method public dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "insets"    # Ljava/lang/Object;
    .param p3, "drawerGravity"    # I

    .prologue
    .line 292
    return-void
.end method

.method public getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopInset(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method
