.class public Lcom/fenghuo/http/HttpConnectionQueue;
.super Ljava/lang/Object;
.source "HttpConnectionQueue.java"


# instance fields
.field public canceled_:Z

.field public id_:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/fenghuo/http/HttpConnectionQueue;->id_:J

    .line 8
    iput-boolean p3, p0, Lcom/fenghuo/http/HttpConnectionQueue;->canceled_:Z

    .line 9
    return-void
.end method
