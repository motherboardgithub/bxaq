.class Lcom/fenghuo/http/HttpsManager$MyHostnameVerifier;
.super Ljava/lang/Object;
.source "HttpsManager.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fenghuo/http/HttpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHostnameVerifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fenghuo/http/HttpsManager$1;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/fenghuo/http/HttpsManager$MyHostnameVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method
