.class final Landroid/support/v4/media/MediaBrowserCompat$MediaItem$1;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 266
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;Landroid/support/v4/media/MediaBrowserCompat$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 271
    new-array v0, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem$1;->newArray(I)[Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v0

    return-object v0
.end method
