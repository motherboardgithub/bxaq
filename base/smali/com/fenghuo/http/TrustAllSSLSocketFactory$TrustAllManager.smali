.class public Lcom/fenghuo/http/TrustAllSSLSocketFactory$TrustAllManager;
.super Ljava/lang/Object;
.source "TrustAllSSLSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fenghuo/http/TrustAllSSLSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrustAllManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fenghuo/http/TrustAllSSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/fenghuo/http/TrustAllSSLSocketFactory;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fenghuo/http/TrustAllSSLSocketFactory$TrustAllManager;->this$0:Lcom/fenghuo/http/TrustAllSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method
