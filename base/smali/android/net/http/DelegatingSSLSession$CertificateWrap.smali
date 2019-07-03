.class public Landroid/net/http/DelegatingSSLSession$CertificateWrap;
.super Landroid/net/http/DelegatingSSLSession;
.source "DelegatingSSLSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/DelegatingSSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateWrap"
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/net/http/DelegatingSSLSession;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
