.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$RouteGroup;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteGroup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupedRoutes(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p0, "groupObj"    # Ljava/lang/Object;

    .prologue
    .line 183
    move-object v1, p0

    check-cast v1, Landroid/media/MediaRouter$RouteGroup;

    .line 185
    .local v1, "group":Landroid/media/MediaRouter$RouteGroup;
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v0

    .line 186
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v3, "out":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 188
    invoke-virtual {v1, v2}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-object v3
.end method
