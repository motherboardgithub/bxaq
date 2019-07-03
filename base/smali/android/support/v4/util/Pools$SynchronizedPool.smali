.class public Landroid/support/v4/util/Pools$SynchronizedPool;
.super Landroid/support/v4/util/Pools$SimplePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/util/Pools$SimplePool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxPoolSize"    # I

    .prologue
    .line 149
    .local p0, "this":Landroid/support/v4/util/Pools$SynchronizedPool;, "Landroid/support/v4/util/Pools$SynchronizedPool<TT;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    .line 150
    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Landroid/support/v4/util/Pools$SynchronizedPool;, "Landroid/support/v4/util/Pools$SynchronizedPool<TT;>;"
    iget-object v1, p0, Landroid/support/v4/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Landroid/support/v4/util/Pools$SynchronizedPool;, "Landroid/support/v4/util/Pools$SynchronizedPool<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/support/v4/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
